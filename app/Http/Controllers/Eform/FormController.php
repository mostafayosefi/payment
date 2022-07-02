<?php

namespace App\Http\Controllers\Eform;

use App\Models\Eform\Form;
use Illuminate\Http\Request;
use App\Models\Eform\FormField;
use App\Models\Eform\FormColoumn;
use App\Models\Eform\FormCategory;
use App\Models\Eform\Currency;
use App\Http\Controllers\Controller;
use App\Models\Eform\FormSubcategory;
use App\Models\Eform\FormTemplate;
use RealRashid\SweetAlert\Facades\Alert;

class FormController extends Controller
{


    public function index(){
        $forms= Form::all();
        return view('admin.Eform.form.index' , compact(['forms'  ]));
    }


    public function create(){

        $form_categories= FormCategory::all();
        $form_subcategories= FormSubcategory::all();
        $form_templates= FormTemplate::all();
        $currencies = Currency::all();
        return view('admin.Eform.form.create' , compact(['form_categories' , 'form_subcategories' , 'form_templates'  , 'currencies' ]));
    }

    public function edit($id){
        $form=Form::find($id);
        $form_categories= FormCategory::all();
        $form_subcategories= FormSubcategory::all();
        $form_templates= FormTemplate::all();
        $currencies = Currency::all();
        return view('admin.Eform.form.edit' , compact(['form' ,'form_categories' , 'form_subcategories', 'form_templates'  , 'currencies'   ]));
    }


    public function store(Request $request)
    {
        $request->validate([
            'form_subcategory_id' => 'required',
            'group' => 'required',
            'subgroup' => 'required',
            'name' => 'required',
            'link' => 'required',
        ]);
        $data = $request->all();
        $data['image']  =  uploadFile($request->file('image'),'images/forms','');

        $data['price'] = str_rep_price($data['price']);

       $form=Form::create($data);
        $price  = validate_price($form->id,0,$form->form_currency_id,'update_price_form');

        Alert::success('با موفقیت ثبت شد', 'اطلاعات جدید با موفقیت ثبت شد');
        return redirect()->route('admin.form.form.index');
    }

    public function show($id)
    {

        $form_fields= FormField::all();
        $forms= Form::all();
        $form=Form::find($id);
        $form_coloumns= FormColoumn::where([ [ 'form_id',$id ] ])->orderBy('priority','asc')->get();

        $count = $form->form_coloumns->count();
        $count--;
        return view('admin.Eform.form.show' , compact(['forms' , 'form_coloumns' , 'form' , 'form_fields', 'count' ]));
    }



    public function update(Request $request, $id , Form $form){
        $request->validate([
            'form_subcategory_id' => 'required',
            'group' => 'required',
            'subgroup' => 'required',
            'name' => 'required',
            'link' => 'required',
        ]);
        $form=Form::find($id);
        $data = $request->all();
        $data['image']= $form->image;
        $data['image']  =  uploadFile($request->file('image'),'images/forms',$form->image);
        $data['price'] = str_rep_price($data['price']);

        $form->update($data);
        $price  = validate_price($form->id,0,$form->form_currency_id,'update_price_form');



        Alert::success('با موفقیت ویرایش شد', 'اطلاعات با موفقیت ویرایش شد');
        return back();
    }


    public function destroy($id , Request $request){
        Form::destroy($request->id);
        Alert::info('با موفقیت حذف شد', 'اطلاعات با موفقیت حذف شد');
        return back();
    }

    public function status(Request $request , $id){
        $status=Change_status($id,'forms');
        return back();
    }




}
