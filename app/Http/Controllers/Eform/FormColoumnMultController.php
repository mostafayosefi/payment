<?php

namespace App\Http\Controllers\Eform;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\Eform\FormColoumnMult;

class FormColoumnMultController extends Controller
{


    public function index($form_coloumn_id=null){
        if($form_coloumn_id==null){
            $form_coloumn_mults= FormColoumnMult::orderBy('priority','asc')->get();
        }else{
            $form_coloumn_mults= FormColoumnMult::where( [ ['form_coloumn_id','=',$form_coloumn_id], ] )->orderBy('priority','asc')->get();
        }
        return view('admin.Eform.form_coloumn_mult.index' , compact(['form_coloumn_mults'  ]));
    }


    public function create(){
        return view('admin.Eform.form_coloumn_mult.create' );
    }

    public function edit($id){
        $form_coloumn_mult=FormColoumnMult::find($id);
        return view('admin.Eform.form_coloumn_mult.edit' , compact(['form_coloumn_mult'  ]));
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $data = $request->all();
        $data['image']  =  uploadFile($request->file('image'),'images/form_coloumn_mults','');

       FormColoumnMult::create($data);
       Alert::success('با موفقیت ثبت شد', 'اطلاعات جدید با موفقیت ثبت شد');
        return redirect()->route('admin.Eform.form_coloumn_mult.index');
    }

    public function show($id)
    {
        //
    }



    public function update(Request $request, $id , Value $form_coloumn_mult){
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $form_coloumn_mult=FormColoumnMult::find($id);
        $data = $request->all();
        $data['image']= $form_coloumn_mult->image;
        $data['image']  =  uploadFile($request->file('image'),'images/form_coloumn_mults',$form_coloumn_mult->image);
        $form_coloumn_mult->update($data);
        Alert::success('با موفقیت ویرایش شد', 'اطلاعات با موفقیت ویرایش شد');
        return back();
    }


    public function destroy($id , Request $request){
        FormColoumnMult::destroy($request->id);
        Alert::info('با موفقیت حذف شد', 'اطلاعات با موفقیت حذف شد');
        return back();
    }

    public function status(Request $request , $id){
        $status=Change_status($id,'form_coloumn_mults');
        return back();
    }




}
