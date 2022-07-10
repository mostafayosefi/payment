<?php

namespace App\Http\Controllers\Eform;

use Illuminate\Http\Request;
use App\Models\Eform\Currency;
use App\Models\Eform\FormData;
use App\Models\Eform\FormColoumn;
use App\Models\Eform\FormDataList;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class FormDataController extends Controller
{


    public function index(){
        $form_datas= FormData::all();
        return view('admin.Eform.form_data.index' , compact(['form_datas'  ]));
    }


    public function create(){
        return view('admin.Eform.form_data.create' );
    }

    public function edit($id){
         $count=FormData::where([ ['form_data_list_id','=' , $id], ])->count();
         $form_data=FormData::where([ ['form_data_list_id','=' , $id], ])->get();
         $form_data_list=FormDataList::where([ ['id','=' , $id], ])->first();
         $currencies=Currency::all();

         $form_coloumns = FormColoumn::where([  ['form_id' , '=' , $form_data_list->form_id  ], ])->get();



        return view('admin.Eform.form_data.edit' , compact(['form_data' , 'form_data_list' ,
        'form_coloumns' , 'id' , 'currencies']));
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $data = $request->all();
        $data['image']  =  uploadFile($request->file('image'),'images/form_datas','');

       FormData::create($data);
       Alert::success('با موفقیت ثبت شد', 'اطلاعات جدید با موفقیت ثبت شد');
        return redirect()->route('admin.form.form_data.index');
    }

    public function show($id)
    {
        //
    }



    public function update(Request $request, $id  ){

        $form_data_list=FormDataList::find($id);
        $form_data=FormData::where([ [ 'form_data_list_id','=', $id ] ])->get();
        $count=FormData::where([ [ 'form_data_list_id','=', $id ] ])->count();



        foreach($form_data_list->form->form_coloumns as $admin){
            $form_field_name = $admin->form_field->name;
            $form_coloumn_id = $admin->id;

            $m=$form_field_name.$form_coloumn_id;

            if(($form_field_name=='input')||($form_field_name=='password')||($form_field_name=='textaria')||($form_field_name=='datepersian')){
                $mydata = $request->$m;
                updateorcreate($id , $form_coloumn_id , $form_field_name , $mydata );
               }

            if(($form_field_name=='select')||($form_field_name=='checkbox')||($form_field_name=='radiobox')){
                foreach($admin->form_coloumn_mults as $mult){
                    if($request->$m==$mult->id) {
                    $mydata=$mult->id;
                updateorcreate($id , $form_coloumn_id , $form_field_name , $mydata );
                    }

                }
            }





        }

        Alert::success('با موفقیت ویرایش شد', 'اطلاعات درخواست کاربر موفقیت ویرایش شد');
        return back();
    }


    public function destroy($id , Request $request){
        FormData::destroy($request->id);
        Alert::info('با موفقیت حذف شد', 'اطلاعات با موفقیت حذف شد');
        return back();
    }

    public function status(Request $request , $id){
        $status=Change_status($id,'form_datas');
        return back();
    }




}
