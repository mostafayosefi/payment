<?php

use App\Models\User;
use App\Models\Ticket;
use App\Models\Wallet;
use App\Models\Setting;
use App\Rules\Uniqemail;

use App\Models\Eform\Form;

use App\Models\Eform\Price;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Morilog\Jalali\Jalalian;


use App\Models\Course\Course;
use App\Models\Loginhistorie;
use App\Models\Course\Teacher;
use App\Models\Eform\Currency;
use App\Models\Eform\FormData;
use App\Models\Eform\FormColoumn;
use App\Models\Eform\FormCategory;
use App\Models\Eform\FormDataList;
use App\Models\Eform\FormDataMult;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Eform\FormColoumnMult;
use App\Models\Eform\FormSubcategory;
use Illuminate\Support\Facades\Route;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use App\Models\Notification\NotificationList;



if(!function_exists('isActive'))
{
    function isActive($key , $activeClassName = 'active')
    {
        if (is_array($key))
        {
            return in_array(Route::currentRouteName() , $key) ? $activeClassName : '';
        }
        return Route::currentRouteName() == $key ? $activeClassName : '';
    }
}


if(!function_exists('isShow'))
{
    function isShow($key , $showClassName = 'show')
    {
        if (is_array($key))
        {
            return in_array(Route::currentRouteName() , $key) ? $showClassName : '';
        }
        return Route::currentRouteName() == $key ? $showClassName : '';
    }
}







//get Status EmployerPackage
if(! function_exists('getStatusEmployerPackage') ) {

    function getStatusEmployerPackage($status)
    {
        if($status == 'active')
        {
            echo '<span class="badge badge-primary">فعال</span>';
        }
        elseif($status == 'inactive')
        {
            echo '<span class="badge badge-danger">غیرفعال</span>';
        }
        else
        {
            echo '<span class="badge badge-info">بررسی شده</span>';
        }
    }

}





if(! function_exists('getstatusdefault') ) {

    function getstatusdefault($status)
    {



/*
        if($status == 'active')
        {
            echo '<i class="fas fa-toggle-on"  ></i> Default';

        }
        elseif($status == 'inactive')
        {
            echo '';
        }
 */

        if($status == 'active')
        {
            echo '<div class="form-check form-check-inline">
            <label class="form-check-label"><input type="radio"   disabled checked class="form-check-input"> پیش فرض </label>
             </div>  ';

        }
        elseif($status == 'inactive')
        {
            echo '<div class="form-check form-check-inline">
            <label class="form-check-label"><input type="radio"   disabled   class="form-check-input">   </label>
             </div> ';
        }



    }

}



if(! function_exists('uploadFileArray') ) {
    function uploadFileArray($file,$path){
if($file){
  if(is_array($file)){
      foreach($file as $part) {
          if($part){

            $current_timestamp = \Carbon\Carbon::now()->timestamp;
            $imagePath = "/upload/$path/";
            $filename = $current_timestamp . $part->getClientOriginalName();
            $file = $part->move(public_path($imagePath) , $filename);
            $filearray[]=$imagePath.$filename;

          }  }  }
          return $filearray;

 }else{
    //  return $defaultfile;
 }
    }

}

if(! function_exists('urllink') ) {
    function urllink($urllink)
    {

$mystring = $urllink; $findme   = 'http'; $pos = strpos($mystring, $findme);
  if ($pos !== false) {  $mystring = $urllink; }else{ $mystring = 'http://'.$urllink; }
return  $mystring;

  }
}




if(! function_exists('str_rep_price') ) {
    function str_rep_price($price)
    {

     return  str_replace( ",","" , $price);


    }
}


if(! function_exists('uploadFile') ) {

    function uploadFile($file,$path,$defaultfile)
    {
 if($file){
        $current_timestamp = \Carbon\Carbon::now()->timestamp;
        $imagePath = "/upload/$path/";
        $filename = $current_timestamp . $file->getClientOriginalName();
        $file = $file->move(public_path($imagePath) , $filename);
        return $imagePath.$filename;

 }else{
     return $defaultfile;
 }
    }

}







if(! function_exists('Change_status') ) {
    function Change_status($id, $table)
    {

        if($table=='users'){
            $table= User::find($id);
            Alert::success('تغییر وضعیت اکانت با موفقیت انجام شد', 'تغییرات وضعیت اکانت با موفقیت انجام شد');
        }


        if($table=='form_categories'){
            $table= FormCategory::find($id);
            Alert::success('تغییر وضعیت گروه با موفقیت انجام شد', 'تغییرات وضعیت گروه با موفقیت انجام شد');
        }


        if($table=='form_subcategories'){
            $table= FormSubcategory::find($id);
            Alert::success('تغییر وضعیت زیرگروه با موفقیت انجام شد', 'تغییرات وضعیت زیرگروه با موفقیت انجام شد');
        }



        if($table=='forms'){
            $table= Form::find($id);
            Alert::success('تغییر وضعیت فرم با موفقیت انجام شد', 'تغییرات وضعیت فرم با موفقیت انجام شد');
        }


        if($table=='form_coloumns'){
            $table= FormColoumn::find($id);
            Alert::success('تغییر وضعیت فیلد با موفقیت انجام شد', 'تغییرات وضعیت فیلد با موفقیت انجام شد');
        }



        if($table=='form_coloumn_mults'){
            $table= FormColoumnMult::find($id);
            Alert::success('تغییر وضعیت پارامتر با موفقیت انجام شد', 'تغییرات وضعیت پارامتر با موفقیت انجام شد');
        }


        if($table=='currencies'){
            $table= Currency::find($id);
            Alert::success('تغییر وضعیت ارز با موفقیت انجام شد', 'تغییرات وضعیت ارز با موفقیت انجام شد');
        }


        if($table=='notification_lists'){
            $table= NotificationList::find($id);
            Alert::success('تغییر وضعیت متن پیش فرض با موفقیت انجام شد', 'تغییرات وضعیت متن پیش فرض با موفقیت انجام شد');
        }




        if($table->status=='active'){$status='inactive';}
        elseif($table->status=='inactive'){$status='active';}
        $flag = $table->update([ 'status' => $status ]);
        return $flag;


    }
}





 if(! function_exists('date_frmat_mnth') ) {
    function date_frmat_mnth($date)
    {
        $date = Jalalian::forge($date)->format('%A, %d %B %Y');
        return $date;

    }

}
//get date_frmat
if(! function_exists('date_frmat') ) {
    function date_frmat($date)
    {
        $date = Jalalian::forge($date)->format('Y/m/d ساعت H:i a');
        return $date;
        // return Verta($date)->format('Y/m/d ساعت H:i a');

    }

}


 if(! function_exists('date_frmat_ymd') ) {
    function date_frmat_ymd($date)
    {
        $date = Jalalian::forge($date)->format('Y/m/d');
        return $date;

    }

}








if(! function_exists('Mywallet') ) {
    function Mywallet($user_id,$operator)
    {
        $query=Wallet::query()->where([
            ['user_id' , '=' ,$user_id],
            ['status' , '=' ,'active'],
        ]);
        $my_inc=$query->where([
            ['flag' , '=' ,'inc'],
            ])->sum('price');

            $my_dec=Wallet::where([
                ['user_id' , '=' ,$user_id],
                ['status' , '=' ,'active'],
                ['flag' , '=' ,'dec'],
            ])->sum('price');

                $mycharge= $my_inc - $my_dec;
                if($operator=='inc'){  return $my_inc;}
                if($operator=='dec'){  return $my_dec;}
                if($operator=='mycharge'){  return $mycharge;}

    }
}

if(! function_exists('linkdomain') ) {
    function linkdomain($domain,$suffix)
    {

 $countDot=0;
         foreach (count_chars($domain, 1) as $char => $count) {
            if(chr($char) =='.'){   $countDot=$count; }
         }
 if($countDot=='0') {
    return $domain.'.'.$suffix;
  }else{
      return $domain;
    $headers = explode('.', $domain);
    $headers['0'];
  }

  }
}



if(! function_exists('count_dashboard') ) {
    function count_dashboard($dash_id,$mytable)
    {



if($mytable=='user'){ $query=User::query()->where([ ['id' , '<>' ,'1'], ]);}

if($mytable=='ticket'){ $query=Ticket::query()->where([ ['id' , '<>' ,'0'], ]);}
if($mytable=='new_ticket'){ $query=Ticket::query()->where([ ['id' , '<>' ,'0'], ['fromshow' , '=' ,'unread'], ]);}
if($mytable=='new_ticket_admin'){ $query=Ticket::query()->where([ ['id' , '<>' ,'0'], ['toshow' , '=' ,'unread'], ]);}

$count=$query->count();

if($dash_id!='all'){$count=$query->where([  ['user_id' , '=' ,$dash_id],  ])->count();}

return $count;

    }
}



//get Status EmployerPackage
if(! function_exists('getStatusEmployerPackage') ) {

    function getStatusEmployerPackage($status)
    {
        if($status == 'active')
        {
            echo '<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; فعال </span>';
        }
        elseif($status == 'inactive')
        {
            echo '
            <span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; غیرفعال </span> ';
        }
        else
        {
            echo '<span class="badge badge-info">بررسی شده</span>';
        }
    }

}



if(! function_exists('priority') ) {
    // function priority($id_link, $id , $up_down , $pri_name)
    function priority($priority)
    {


        $id_link = $priority['id_link'] ;
        $up_down = $priority['up_down'] ;
        $pri_name = $priority['pri_name'] ;
        $my_priority = $priority['my_priority'] ;
        $id = $priority['id'] ;

        // dd($priority);

        if($pri_name=='coloumn'){
            $query=FormColoumn::query()->where([
                ['id' , '<>' , 0],
                ['form_id' , '=' , $id_link ],
            ]);
            $count = $query->where([
                ['form_id' , '=' , $id_link ],
            ])->count();


            if($up_down=='up'){ $new_priority=$my_priority-1; $default_priority=100; }
            if($up_down=='down'){ $new_priority=$my_priority+1; $default_priority=100; }
            if($up_down=='insert'){ $new_priority=$count;   }


            if(($up_down=='up')||($up_down=='down')){

//            3=>100
            // $query->where([
            //     ['priority' , '=' , $my_priority ],
            // ])->update(['priority' => $default_priority]);


            $UpdateDetails = FormColoumn::where( 'priority' ,   $my_priority)->first();
            $UpdateDetails->priority = $default_priority;
            $UpdateDetails->save();


//            2=>3
            // $query->where([
            //     ['priority' , '=' , $new_priority ],
            // ])->update(['priority' => $my_priority]);

            $UpdateDetails = FormColoumn::where( 'priority' ,   $new_priority)->first();
            $UpdateDetails->priority = $my_priority;
            $UpdateDetails->save();


//            100=2
            // $query->where([
            //     ['priority' , '=' , $default_priority ],
            // ])->update(['priority' => $new_priority]);


            $UpdateDetails = FormColoumn::where( 'priority' ,   $default_priority)->first();
            $UpdateDetails->priority = $new_priority;
            $UpdateDetails->save();


            }

            if($up_down=='insert'){
                $query->where([
                    ['id' , '=' , $id ],
                ])->update(['priority' => $new_priority]);
            }


            if($up_down=='sort'){

                $form_coloumns= $query->orderBy('priority','asc')->get();
                $i=0;
                if($form_coloumns){
                    foreach($form_coloumns as   $mtcoloumn){
                        $i++;
                        $UpdateDetails = FormColoumn::where( 'priority' ,   $mtcoloumn->priority )->first();
                        $UpdateDetails->new_priority = $i;
                        $UpdateDetails->save();
                    }}

                    $form_coloumns= $query->orderBy('id','asc')->get();
                if($form_coloumns){
                    foreach($form_coloumns as   $mtcoloumn){
                        $UpdateDetails = FormColoumn::where( 'id' ,   $mtcoloumn->id )->first();
                        $UpdateDetails->priority = $mtcoloumn->new_priority;
                        $UpdateDetails->save();
                    }
                }


            }







            // 966*0905*5022-2910-8959-5993

        }




//        git remote set-url origin "https://mostafayosefi@github.com/mostafayosefi/payment.git"
//        git remote set-url origin "https://github.com/mostafayosefi/payment.git"


//        git fetch
//git merge
//        git reset --hard


    }



}


if(! function_exists('update_lastlogin') ) {
    function update_lastlogin($id, $key)
    {




        if($key=='login'){
            $myuser =  User::addSelect(['last_login' => Loginhistorie::select('created_at')
            ->whereColumn('user_id', 'users.id')
            ->where('users.id' , $id)
            ->orderByDesc('created_at')
            ->limit(1)
        ])->first();
        return $myuser->last_login;}


        if($key=='ip'){
            $myuser =  User::addSelect(['last_ip' => Loginhistorie::select('ip')
            ->whereColumn('user_id', 'users.id')
            ->where('users.id' , $id)
            ->orderByDesc('created_at')
            ->limit(1)
        ])->first();
        return $myuser->last_ip;}

    }

}




    if(! function_exists('secret_user') ) {
        function secret_user(Request $request , $user , $oper , $db)
        {


            if($oper=='secret'){

                session(['err' => '1']);
                $request->validate([
                    'password' => 'required| min:4 |confirmed',
                    'password_confirmation' => 'required| min:4'
                ]);
        $user->update([ 'password' => Hash::make($request->password) ]);
        Alert::success('با موفقیت ویرایش شد', 'رمزعبور با موفقیت تغییر پیدا کرد ');
            }


            if($oper=='update'){
                $request->session()->forget('err');

                $request->validate([
                    'name' => 'required',
                    'username' => ['required',new Uniqemail($db,'username',$user->id)] ,
                    'email' => ['required' , 'email',new Uniqemail($db,'email',$user->id)] ,
                    'tell' => ['required', 'regex:/^09[0-9]{9}$/' ,new Uniqemail($db,'tell',$user->id)] ,
                ]);


                 $data = $request->all();
                $data['image']= $user->image;
                $data['image']  =  uploadFile($request->file('image'),'images/'.$db,$user->image);


       $m =  $user->update($data);
         Alert::success('با موفقیت ویرایش شد', 'اطلاعات با موفقیت ویرایش شد');


            }


     return back();



        }
    }






    if(! function_exists('flage_price') ) {
        function flage_price($price)
        {



$exit=number_format($price).' ريال ';    return  $exit;



        }
    }







    if(! function_exists('count_dashboard') ) {
        function count_dashboard($dash_id,$mytable)
        {



if($mytable=='user'){ $query=User::query()->where([ ['id' , '<>' ,'1'], ]);}


if($mytable=='ticket'){ $query=Ticket::query()->where([ ['id' , '<>' ,'0'], ]);}
if($mytable=='new_ticket'){ $query=Ticket::query()->where([ ['id' , '<>' ,'0'], ['fromshow' , '=' ,'unread'], ]);}
if($mytable=='new_ticket_admin'){ $query=Ticket::query()->where([ ['id' , '<>' ,'0'], ['toshow' , '=' ,'unread'], ]);}

$count=$query->count();

if($dash_id!='all'){$count=$query->where([  ['user_id' , '=' ,$dash_id],  ])->count();}

return $count;

        }
    }


    if(! function_exists('status_req') ) {
        function status_req($status,$myfunc)
        {

$nameoper='';
if($status == 'register'){$statusacc='waiting'; $nameoper='براورد هزینه'; $messagetext='براورد هزینه سفارش توسط مدیریت انجام شد';}
if ($status == 'waiting'){$statusacc='active';  $nameoper='تایید سفارش';  $messagetext='سفارش توسط مدیریت تایید شد';}
if ($status == 'active'){$statusacc='active';  $nameoper='فعالسازی مجدد سفارش';  $messagetext='سفارش فعال شد';}
if ($status == 'inactive'){$statusacc='register';  $nameoper='فعالسازی مجدد سفارش';  $messagetext='سفارش مجددا توسط مدیریت تایید شد';}
if ($status == 'reactive'){$statusacc='register';  $nameoper='فعالسازی مجدد سفارش';  $messagetext='سفارش مجددا توسط مدیریت تایید شد';}
if ($status == 'recerve'){$statusacc='active';  $nameoper='ثبت نهایی شرکت';  $messagetext='ثبت نهایی شرکت باموفقیت انجام شد';}
if ($status == 'waitpay'){$statusacc='active';  $nameoper='تایید پرداخت کاربر';  $messagetext='پرداخت کاربر توسط مدیریت تایید شد';}



if($myfunc=='status'){ return $statusacc; }
if($myfunc=='nameoper'){ return $nameoper; }
if($myfunc=='text'){ return $messagetext; }

        }
    }

    if(! function_exists('now_time') ) {
        function now_time( $value)
        {
            return now()->addYears($value)->format('Y-m-d');
        }
    }



    if(! function_exists('time_fake') ) {
        function time_fake( $endtime ,$value)
        {


            $modifier= '-'.$value.' days';
            $modifier .= '-9 hourse';
        $date = strtotime($endtime);
        $newdate = date('Y-m-d h:i',strtotime($modifier,$date));
        return $newdate;

        }
    }




if(! function_exists('validate_price') ) {
    function validate_price($form_id, $form_data_list_id , $form_currency_id , $comparison)
    {

        $form=Form::find($form_id);
        $currencies=Currency::all();





        if($form_currency_id > 0 ){
            foreach ($currencies as $currency ){
                if($form->form_currency_id==$currency->id){
                    if($comparison=='currency_rate') {
                        return $currency->rate;
                    }
                    if($comparison=='currency_money') {
                        return $form->money;
                    }
                    if($comparison=='currency_name') {
                        return $currency->name;
                    }
                    if($comparison=='currency') {
                        return '1';
                    }
                    if($comparison=='currency_exchange_price') {
                        $price = ($form->money * $currency->rate);
                        return $price;                    }
                    if($comparison=='update_price_form') {
                        $price = ($form->money * $currency->rate);
                        $form->update([ 'price' => $price ]);
                        return $price;
                    }
                }
            }

        }else{

            if($comparison=='currency') {
                return '0';
            }

            if($comparison=='update_price_form') {
                $price = $form->price;
                $form->update([ 'price' => $price ]);
                return $price;
            }
        }



    }
}


if(! function_exists('updateorcreate') ) {
    function updateorcreate($id , $form_coloumn_id , $form_field_name , $mydata)
    {



        if(($form_field_name=='input')||($form_field_name=='textaria')){
            $newUser = FormData::updateOrCreate([
                'form_data_list_id'   => $id,
                'form_coloumn_id'   => $form_coloumn_id,
            ],[
                'data'     => $mydata,
            ]);

        }

        if($form_field_name=='radiobox'){

            $newUser = FormData::updateOrCreate([
                'form_data_list_id'   => $id,
                'form_coloumn_id'   => $form_coloumn_id,
            ],[
                'data'     => $mydata,
            ]);

            $query=FormDataMult::query()->where([
                'form_data_list_id'   => $id,
                'form_coloumn_id'   => $form_coloumn_id,
            ]);

            $count=$query->count();
            if($count=='0'){
                FormDataMult::create([
                    'form_data_list_id'   => $id,
                    'form_coloumn_id'   => $form_coloumn_id,
                    'form_coloumn_mult_id'   => $mydata,
                    'data'   => $mydata,
                ]);

            }else{
                $query->update([
                    'form_coloumn_mult_id'   => $mydata,
                    'data'   => $mydata,
                ]);
            }



        }



    }
}


if(! function_exists('mydata') ) {
    function mydata($form_data , $admin)
    {

         $mydata='';
         if($form_data){
         foreach ($form_data as $medata ){
         if ($medata->form_coloumn_id==$admin->id){
         $mydata=$medata->data;
         }
        }

        return $mydata;

    }


    }
}

if(! function_exists('currency_id') ) {
    function currency_id($rate)
    {


        $currencies = Currency::all();

        foreach($currencies as $currency){
            if($currency->rate==$rate){
                $currency_id = $currency->id;
            }
        }

return $currency_id;

    }
}




if(! function_exists('my_list') ) {
    function my_list($form , $form_data_list , $oper )
    {



        if($form_data_list){
        $currency = $form_data_list->price->currency;
        $money = $form_data_list->price->money;
        }else{
        $currency = $form->currency->id;
        $money = $form->money;
        }

        $model_currency=Currency::find($currency);
        $rate = $model_currency->rate;
        $price = $money*$rate;

        if($oper=='currency'){ return $currency; }
        if($oper=='money'){ return $money; }
        if($oper=='rate'){ return $rate; }
        if($oper=='price'){ return $price; }



    }
}






if(! function_exists('currency_form_data') ) {
    function currency_form_data($form_id )
    {
        $form=Form::find($form_id);
        $currency = $form->currency->id;
        $money = $form->money;
        $price = Price::create([ 'currency' => $currency , 'money' => $money ]);
        return $price;

    }
}


if(! function_exists('updata_form_data') ) {
    function updata_form_data(Request $request, $id)
    {

        $form_data_list=FormDataList::find($id);
        $form_data=FormData::where([ [ 'form_data_list_id','=', $id ] ])->get();
        $count=FormData::where([ [ 'form_data_list_id','=', $id ] ])->count();

$price=Price::find($form_data_list->price_id);
$currency_id = currency_id($request->currency);
$price->update([ 'currency'=>$currency_id , 'money'=>$request->money  ]);

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


    }
}




if(! function_exists('form_or_date') ) {
    function form_or_date($form_data_list , $form)
    {

        if($form_data_list){
            return $form_data_list->form;
        }else{
            return $form;
        }


    }

}
