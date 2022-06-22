<?php

namespace App\Http\Controllers\Eform;

use App\Http\Controllers\Controller;
use App\Models\Eform\FormData;
use Illuminate\Http\Request;
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
        $form_data=FormData::find($id);
        return view('admin.Eform.form_data.edit' , compact(['form_data'  ]));
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



    public function update(Request $request, $id , FormData $form_data){
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $form_data=FormData::find($id);
        $data = $request->all();
        $data['image']= $form_data->image;
        $data['image']  =  uploadFile($request->file('image'),'images/form_datas',$form_data->image);
        $form_data->update($data);
        Alert::success('با موفقیت ویرایش شد', 'اطلاعات با موفقیت ویرایش شد');
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
