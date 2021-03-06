@extends('mng.layout')


 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

@section('title')
<title>
مدیریت {{Session::get('titplan')}} 
</title>
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

			<!-- partial -->

			<div class="page-content">

		 

        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
 <h4 class="text-center mb-3 mt-4">
 مدیریت {{Session::get('titplan')}} </h4>
 <p class="text-muted text-center mb-4 pb-2">  جهت 
 مدیریت {{Session::get('titplan')}} 
   و همچنین مشاهده و ویرایش آن لطفا اقدام نمایید </p>
                <div class="container">
                  <div class="row">
                  
             
 @foreach($giftcards as $giftcard) 
                    <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                      <div class="card">
                        <div class="card-body">
 <h5 class="text-center text-uppercase mt-3 mb-4">{{$giftcard->subcatf_name}}</h5>


<img class="img-fluid" src="{{env('APP_URL')}}/public/images/{{$giftcard->subcatf_img}}" alt=""><hr>

<p>
<!--
<?php echo mb_substr($giftcard->subcatf_des, 0, 125, mb_detect_encoding($giftcard->subcatf_des)).'...'; ?>
-->
<?php echo $giftcard->subcatf_des; ?>
 </p>
<hr>

<a href="{{env('APP_URL')}}/manage/{{Session::get('arou')}}/plane/{{$plan}}/{{$giftcard->subcatf_id}}" class="btn btn-primary d-block mx-auto mt-4"><h5 class="text-center font-weight-light">

مدیریت {{$giftcard->subcatf_name}} 
  </h5></a>
                           
                            
                        </div>
                      </div>
                    </div>
                     
                    @endforeach
                     
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
		 
			</div>

@stop
<!--
<script src="{{env('APP_URL')}}/build/servicepay/firealert/components.js.download"></script> 
 
    <script>
        $(document).ready(function () {
                        Swal.fire({
                text: 'باموفقیت انجام شد که شد که شد',
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