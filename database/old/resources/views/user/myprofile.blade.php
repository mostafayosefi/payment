@extends('user.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>پروفایل</title>
@stop
 
 <link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/core/core.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/persian-datepicker-0.4.5.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/fonts/feather-font/css/iconfont.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="{{env('APP_URL')}}/build/template/assets/css/demo_1/style.css">
<link rel="shortcut icon" href="{{env('APP_URL')}}/build/template/assets/images/favicon.png" />
</head>

<body class="sidebar-dark rtl">


@section('body')

@foreach($admins as $admin)

			<div class="page-content">

				<div class="profile-page tx-13">
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="profile-header">
								<div class="cover">
									<div class="gray-shade"></div>
									<figure>
										<img src="{{env('APP_URL')}}/build/template/assets/images/profile-cover.jpg" class="img-fluid"
											alt="profile cover">
									</figure>
									<div class="cover-body d-flex justify-content-between align-items-center">
										<div>

<img class="profile-pic" src="{{env('APP_URL')}}/public/images/{{$admin->user_img}}"
												alt="profile">
 <span class="profile-name">{{$admin->user_name}}</span>
										</div>
										<div class="d-none d-md-block">
											<button class="btn btn-primary btn-icon-text btn-edit-profile">
												<i data-feather="edit" class="btn-icon-prepend"></i> ویرایش پروفایل
											</button>
										</div>
									</div>
								</div>
								<div class="header-links">
								 
								</div>
							</div>
						</div>
					</div>
					<div class="row profile-body">
						<!-- left wrapper start -->
						<div class="col-md-4 col-xl-3 left-wrapper">
							<div class="card rounded">
								<div class="card-body">
									<div class="d-flex align-items-center justify-content-between mb-2">

<h6 class="card-title mb-0">اطلاعات پروفایل</h6>


<div class="dropdown">
 <button class="btn p-0" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i> </button>
 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
 <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2" class="icon-sm ml-2"></i> <span class="">ویرایش پروفایل</span></a>
 <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="git-branch" class="icon-sm ml-2"></i> <span class="">به روز رسانی</span></a>
 <a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye" class="icon-sm ml-2"></i> <span class="">مشاهده همه</span></a>
											</div>
										</div>

									</div>




 <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">نام و نام خانوادگی : </label>
 <p class="text-muted">
 	
 @if($admin->user_autactive=='1')             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_name}} </span>
@elseif($admin->user_autactive=='0') 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; {{$admin->user_name}} </span> 
@endif
 </p> 
 </div>
 


 <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">ایمیل : </label>
 <p class="text-muted">
 	
 @if($admin->user_emailactive=='1')             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_email}} </span>
@elseif($admin->user_emailactive=='0') 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; {{$admin->user_email}} </span> 
@endif
 </p> 
 </div>
 
  <div class="mt-3">
 <label class="tx-11 font-weight-bold mb-0 text-uppercase">تلفن : </label>
 <p class="text-muted">
 @if($admin->user_tellactive=='1')             
<span class="badge badge-success"><i data-feather="check-circle"></i> &nbsp; {{$admin->user_tell}} </span>
@elseif($admin->user_tellactive=='0') 
<span class="badge badge-warning"><i data-feather="x-circle"></i> &nbsp; {{$admin->user_tell}} </span> 
@endif  
 </p> 
 </div>
 

<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">آدرس : </label>
<p class="text-muted">{{$admin->user_adres}}</p></div>


<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">تاریخ ثبت نام : </label>
<p class="text-muted">{{jDate::forge($admin->user_createdatdate)->format('Y/m/d ساعت H:i a')}}</p></div>



<div class="mt-3">
<label class="tx-11 font-weight-bold mb-0 text-uppercase">تاریخ آخرین ورود : </label>
<p class="text-muted">{{jDate::forge($admin->user_loginatdate)->format('Y/m/d ساعت H:i a')}}</p></div>

								</div>
							</div>
						</div>
						<!-- left wrapper end -->
						<!-- middle wrapper start -->
						<div class="col-md-8  col-xl-9  ">
						 
							
							
							
									<div class="card card-default">
										<div class="card-header card-header-border-bottom">
 <h4>پروفایل مدیریت   </h4>
										</div>
										<div class="card-body">
 <ul class="nav nav-tabs" id="myTab" role="tablist">
 <li class="nav-item">
 <a class="nav-link  @if(empty(Session::get('err'))||(Session::get('err')=='1'))  active @endif" id="icon-home-tab" data-toggle="tab" href="#icon-home" role="tab" aria-controls="icon-home" aria-selected="@if(empty(Session::get('err')))  true @else false  @endif"> <i data-feather="edit-2"></i>ویرایش پروفایل </a>
 </li>
 <li class="nav-item">
 <a class="nav-link @if(Session::get('err')=='2')  active @endif " id="icon-secret-tab" data-toggle="tab" href="#icon-secret" role="tab" aria-controls="icon-secret" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="lock"></i> تنظیمات رمزعبور</a>
 </li>
 </ul>


<div class="tab-content" id="myTabContent2">

<div class="tab-pane pt-3 fade   @if(empty(Session::get('err'))||(Session::get('err')=='1')) show active @endif" id="icon-home" role="tabpanel" aria-labelledby="icon-home-tab">

<div class="row">
<div class="col-xl-12"> 


<form class="forms-sample"  method="POST" action="" enctype="multipart/form-data"  onsubmit="return Validate(this);"   >
 
<div class="row">




            
<div class="col-sm-12">         
        @if(count($errors))
			<div class="alert alert-danger">
				<strong>اخطار!</strong> لطفا اطلاعات را به درستی وارد نمایید
				<br/>
				<ul>
					@foreach($errors->all() as $error)
					<li>{{ $error }}</li>
					@endforeach
				</ul>
			</div>
		@endif
                    
			</div>




<div class="col-sm-6"> 
<div class="form-group" >
<label for="exampleInputUsername1">نام و نام خانوادگی</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام و نام خانوادگی" name="name" @if ($admin->user_name) value="{{$admin->user_name}}"@else value="{{ old('name') }}" @endif  required> 
</div>		
 


<div class="form-group" >
<label for="exampleInputUsername1">ایمیل</label>
<input type="email" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="ایمیل" name="email" @if ($admin->user_email) value="{{$admin->user_email}}"@else value="{{ old('email') }}" @endif > 
</div>		



<div class="form-group" >
<label for="exampleInputUsername1">تلفن</label>
<input type="text"    class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="تلفن" name="tell" @if ($admin->user_tell) value="{{$admin->user_tell}}"@else value="{{ old('tell') }}" @endif > 
</div>		

</div>			
 
 
<div class="col-sm-6"> 


<div class="form-group" >
<label for="exampleInputUsername1">نام کاربری</label>
<input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام کاربری" name="username" @if ($admin->user_username) value="{{$admin->user_username}}"@else value="{{ old('username') }}" @endif required > 
</div>	

	

<div class="form-group" >
<label for="adres">آدرس</label>

<textarea class="form-control"  placeholder="آدرس" id="adres" name="adres" rows="3" >@if ($admin->user_username) {{$admin->user_adres}} @else {{old('adres')}} @endif</textarea>
 
</div>	



<div class="form-group" >
<label for="exampleInputUsername1"> تصویر پروفایل</label>
<input type="file"     id="exampleInputUsername1" autocomplete="off"  name="file" > 
</div>		
 
 
                     <input type="hidden" name="_token" value="{{ csrf_token() }}">
                     
<div class="form-group">
<label for="exampleInputUsername1"> </label>

<button type="submit" class="btn btn-primary btn-block">ویرایش</button> 
</div>		
</div>				
 
 

 	
</div>
		 
</form>


							 
					</div>
		</div>									
											
												</div>

<div class="tab-pane pt-3 fade  @if(Session::get('err')=='2') show active @endif" id="icon-secret" role="tabpanel" aria-labelledby="icon-secret-tab">
	
	 
</div>

 										

</div>

										</div>
									</div>
							
				 
							
							
							
							
							
							
							
							 
						</div> 
					</div>
				</div>

			</div>

@endforeach


@stop
<!--
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: '<?php echo Session::get('statust'); ?>',
                type: 'success',
                confirmButtonText: 'بستن',       toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1113000

            });
            
        });
    </script>  
-->






@if(!empty(Session::get('statust')))
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: '<?php echo Session::get('statust'); ?>',
                type: 'success',
                confirmButtonText: 'بستن'

            });
            
        });
    </script>
@endif



</body>

</html>