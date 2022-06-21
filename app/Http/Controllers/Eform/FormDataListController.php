<?php

namespace App\Http\Controllers\Eform;

use App\Http\Controllers\Controller;
use App\Models\Eform\FormDataList;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;

class FormDataListController extends Controller
{


    public function index(){
        $form_data_lists= FormDataList::all();
        return view('admin.Eform.form_data_list.index' , compact(['form_data_lists'  ]));
    }


    public function create(){
        return view('admin.Eform.form_data_list.create' );
    }

    public function edit($id){
        $form_data_list=FormDataList::find($id);
        return view('admin.Eform.form_data_list.edit' , compact(['form_data_list'  ]));
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $data = $request->all();
        $data['image']  =  uploadFile($request->file('image'),'images/form_data_lists','');

       FormDataList::create($data);
       Alert::success('با موفقیت ثبت شد', 'اطلاعات جدید با موفقیت ثبت شد');
        return redirect()->route('admin.Eform.form_data_list.index');
    }

    public function show($id)
    {
        //
    }



    public function update(Request $request, $id , FormDataList $form_data_list){
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $form_data_list=FormDataList::find($id);
        $data = $request->all();
        $data['image']= $form_data_list->image;
        $data['image']  =  uploadFile($request->file('image'),'images/form_data_lists',$form_data_list->image);
        $form_data_list->update($data);
        Alert::success('با موفقیت ویرایش شد', 'اطلاعات با موفقیت ویرایش شد');
        return back();
    }


    public function destroy($id , Request $request){
        FormDataList::destroy($request->id);
        Alert::info('با موفقیت حذف شد', 'اطلاعات با موفقیت حذف شد');
        return back();
    }

    public function status(Request $request , $id){
        $status=Change_status($id,'form_data_lists');
        return back();
    }




}
