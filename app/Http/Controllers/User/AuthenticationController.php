<?php

namespace App\Http\Controllers\User;

use App\Models\BankAccount;
use Illuminate\Http\Request;
use App\Models\Authentication;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;

class AuthenticationController extends Controller
{


    public function index(){  
        $user = Auth::guard('user')->user();
        $authentication= Authentication::where([ ['user_id' , '=' , $user->id  ], ])->orderby('id','desc')->first();
        $authentication=  count_auth($user,$authentication); 
        $bank_accounts= BankAccount::where([ ['user_id' , '=' , $user->id  ], ])->orderby('id','desc')->get();


        return view('user.authentication.index' , compact(['authentication' , 'bank_accounts' ]));
    }


    public function create(){
        return view('admin.value.create' );
    }

    public function edit($id){
        $value=Value::find($id);
        return view('admin.value.edit' , compact(['value'  ]));
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $data = $request->all();
        $data['image']  =  uploadFile($request->file('image'),'images/values','');

       Value::create($data);
       Alert::success('با موفقیت ثبت شد', 'اطلاعات جدید با موفقیت ثبت شد');
        return redirect()->route('admin.value.index');
    }

    public function show($id)
    {
        //
    }



    public function update(Request $request, $id , Value $value){
        $request->validate([
            'name' => 'required',
            'text' => 'required',
        ]);
        $value=Value::find($id);
        $data = $request->all();
        $data['image']= $value->image;
        $data['image']  =  uploadFile($request->file('image'),'images/values',$value->image);
        $value->update($data);
        Alert::success('با موفقیت ویرایش شد', 'اطلاعات با موفقیت ویرایش شد');
        return back();
    }


    public function destroy($id , Request $request){
        Value::destroy($request->id);
        Alert::info('با موفقیت حذف شد', 'اطلاعات با موفقیت حذف شد');
        return back();
    }

    public function status(Request $request , $id){
        $status=Change_status($id,'values');
        return back();
    }




}
