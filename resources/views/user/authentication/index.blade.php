@component('user.layouts.content',[
    'title'=>'تایید مدارک',
    'tabTitle'=>'تایید مدارک',
    'breadcrumb'=>[
            ['title'=>'تایید مدارک','class' => 'active']
    ]])



@slot('style')
<link rel="stylesheet" href="{{ asset('template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
<link rel="stylesheet" href="{{ asset('template/assets/fonts/feather-font/css/iconfont.css') }}">

 @endslot





 <div class="page-content">


  @include('admin.alert.activition', [ $authentication , 'oper'=>'email_verify' , 'guard' => 'user' ])
  @include('admin.alert.activition', [ $authentication , 'oper'=>'tell_verify' , 'guard' => 'user' ])
  @include('admin.alert.activition', [ $authentication , 'oper'=>'document_verify' , 'guard' => 'user' ])




          <div class="profile-page tx-13">



            <div class="row profile-body">


              <div class="col-md-12  col-xl-12  ">




                    <div class="card card-default">
                      <div class="card-header card-header-border-bottom">
   <h4>پروفایل کاربر    </h4>
                      </div>
                      <div class="card-body">
   <ul class="nav nav-tabs" id="myTab" role="tablist">
   <li class="nav-item">
   <a class="nav-link  @if((empty(Session::get('errus')))||(Session::get('errus')=='1'))   active @endif" id="icon-home-tab" data-toggle="tab" href="#icon-home" role="tab" aria-controls="icon-home" aria-selected="@if(empty(Session::get('err')))  true @else false  @endif">  <i data-feather="mail"></i> تایید ایمیل </a>
    </li>
   <li class="nav-item">
   <a class="nav-link @if(Session::get('errus')=='2')  active @endif " id="icon-secret-tab" data-toggle="tab" href="#icon-secret" role="tab" aria-controls="icon-secret" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"><i data-feather="phone"></i>تایید تلفن همراه </a></li>
   <li class="nav-item">
   <a class="nav-link @if(Session::get('errus')=='4')  active @endif " id="icon-tels-tab" data-toggle="tab" href="#icon-tels" role="tab" aria-controls="icon-tels" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="phone-incoming"></i> تایید تلفن ثابت</a>
   </li>
   <li class="nav-item">
   <a class="nav-link @if(Session::get('errus')=='3')  active @endif " id="icon-card-tab" data-toggle="tab" href="#icon-card" role="tab" aria-controls="icon-card" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="credit-card"></i> کارت ملی</a>
   </li>
   <li class="nav-item">
   <a class="nav-link @if(Session::get('errus')=='5')  active @endif " id="icon-user-tab" data-toggle="tab" href="#icon-user" role="tab" aria-controls="icon-user" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="user"></i> تصویر سلفی</a>
   </li>
   <li class="nav-item">
   <a class="nav-link @if(Session::get('errus')=='6')  active @endif " id="icon-selfi-tab" data-toggle="tab" href="#icon-selfi" role="tab" aria-controls="icon-selfi" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="file-text"></i> تصویر سایر مدارک </a>
   </li>
   <li class="nav-item">
   <a class="nav-link @if(Session::get('errus')=='7')  active @endif " id="icon-credit-tab" data-toggle="tab" href="#icon-credit" role="tab" aria-controls="icon-credit" aria-selected="@if(Session::get('err')=='1')   true @else false  @endif"> <i data-feather="credit-card"></i> اطلاعات حساب بانکی </a>
   </li>
   </ul>


  <div class="tab-content" id="myTabContent2">

  <div class="tab-pane pt-3 fade    @if((empty(Session::get('errus')))||(Session::get('errus')=='1')) show active @endif" id="icon-home" role="tabpanel" aria-labelledby="icon-home-tab">
    @include('user.authentication.email', [ $authentication ,  'guard' => 'user' ])
 </div>

  <div class="tab-pane pt-3 fade  @if(Session::get('errus')=='2') show active @endif" id="icon-secret" role="tabpanel" aria-labelledby="icon-secret-tab">

    @include('user.authentication.tell', [ $authentication ,  'guard' => 'user' ])


  </div>

   <div class="tab-pane pt-3 fade  @if(Session::get('errus')=='3') show active @endif" id="icon-card" role="tabpanel" aria-labelledby="icon-card-tab">

        @include('user.authentication.passport', [ $authentication ,  'guard' => 'user' ])


   </div>


  <div class="tab-pane pt-3 fade  @if(Session::get('errus')=='4') show active @endif" id="icon-tels" role="tabpanel" aria-labelledby="icon-tels-tab">
  tels
  </div>


  <div class="tab-pane pt-3 fade  @if(Session::get('errus')=='5') show active @endif" id="icon-user" role="tabpanel" aria-labelledby="icon-user-tab">


   <div class="row">
  <div class="col-md-12 grid-margin">
   <div class="card rounded">
   <div class="card-body">
   <h6 class="card-title">تایید تصویر سلفی</h6>

  <script>
    var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png", ".ico"];
  function Validate(oForm) {
      var arrInputs = oForm.getElementsByTagName("input");
      for (var i = 0; i < arrInputs.length; i++) {
          var oInput = arrInputs[i];
          if (oInput.type == "file") {
              var sFileName = oInput.value;
              if (sFileName.length > 0) {
                  var blnValid = false;
                  for (var j = 0; j < _validFileExtensions.length; j++) {
                      var sCurExtension = _validFileExtensions[j];
                      if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                          blnValid = true;
                          break;
                      }
                  }

                  if (!blnValid) {
                      alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                      return false;
                  }

              }
          }
      }

      return true;
  }
  </script>


     <script type="text/javascript">
      $(document).ready(function(){
          $('#file').change(function(){
                 var fp = $("#file");
                 var lg = fp[0].files.length; // get length
                 var items = fp[0].files;
                 var fileSize = 0;

             if (lg > 0) {
                 for (var i = 0; i < lg; i++) {
                     fileSize = fileSize+items[i].size; // get file size
                 }
                 if(fileSize > 10447152) {
                      alert('حجم فایل آپلود شده نمی تواند بیشتر از 10 مگابایت باشد!');
                      $('#file').val('');
                 }
             }
          });
      });
      </script>






   @if ($authentication->selfi_verify=='active')
   @if (empty($authentication->selfi))
  <form class="form-horizontal" method="POST" action="verificationdoc/post/2"   enctype="multipart/form-data"  onsubmit="return Validate(this);" >

    @include('admin.layouts.errors')

   <div class="d-flex align-items-center hover-pointer">
   <div class="mr-2">


  <div class="form-group" >
  <label for="file"> آپلود مدارک   </label>
  <input type="file" name="file"    id="file" autocomplete="off"  name="file" required >
  </div>



   </div>
   </div>




  <div class="input-group">
   <div class="input-group-btn">
  <button type="submit" class="btn btn-primary  btn-icon-text">
   <i class="btn-icon-prepend" data-feather="send"></i>
  ارسال تصویرسلفی
  </button>
   </div>
   </div>







    @method('PUT')
    @csrf
  </form>


   @elseif($authentication->selfi)


   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
   <div class="alert alert-warning alert-dismissible fade show" role="alert">
   <strong><b> <i data-feather="alert-circle"></i> &nbsp; مدارک سلفی شما در انتظار تایید مدیریت می باشد   </b>  </strong> <br>
  </div>
  </div>
  </div>

   @endif
   @endif



   @if ($authentication->selfi_verify=='active')


   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
   <div class="alert alert-success alert-dismissible fade show" role="alert">
   <strong><b> <i data-feather="check-circle"></i> &nbsp; مدارک سلفی شما به تایید مدیریت رسید   </b>  </strong> <br>
  </div>
  </div>
  </div>

   @endif



   @if ($authentication->selfi_verify=='active')


   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
   <div class="alert alert-danger alert-dismissible fade show" role="alert">
   <strong><b> <i data-feather="x-circle"></i> &nbsp; متاسفانه مدارک سلفی شما توسط مدیریت رد شد    </b>  </strong> <br>
  </div>
  </div>
  </div>




   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
  <i data-feather="alert-circle"></i>
   <div class="mr-2">
   <p>توضیحات : text</p>
   </div>
   </div>
   </div>


  <form class="form-horizontal" method="POST" action="verificationdoc/post/2"   enctype="multipart/form-data"  onsubmit="return Validate(this);" >

    @include('admin.layouts.errors')

   <div class="d-flex align-items-center hover-pointer">
   <div class="mr-2">

  <div class="form-group" >
  <input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام و نام خانوادگی" name="name" @if ($authentication->user->name) value="{{$authentication->user->name}}"@else value="{{ old('name') }}" @endif  required>
  </div>


  <div class="form-group" >
  <label for="file"> آپلود سلفی   </label>
  <input type="file" name="file"    id="file" autocomplete="off"  name="file" required >
  </div>



   </div>
   </div>




  <div class="input-group">
   <div class="input-group-btn">
  <button type="submit" class="btn btn-primary  btn-icon-text">
   <i class="btn-icon-prepend" data-feather="send"></i>
    ارسال مدارک
  </button>
   </div>
   </div>







    @method('PUT')
    @csrf
  </form>




   @endif






   </div>
   </div>
   </div>
   </div>


   @if ($authentication->selfi)
   @include('admin.layouts.table.avatarnul', [  'avatarimage' => $authentication->selfi , 'class'=>'' , 'style' => 'height: 160px;width: 240px;'  ])

  @else


  @endif






  </div>

  <div class="tab-pane pt-3 fade  @if(Session::get('errus')=='6') show active @endif" id="icon-selfi" role="tabpanel" aria-labelledby="icon-selfi-tab">





   <div class="row">
  <div class="col-md-12 grid-margin">
   <div class="card rounded">
   <div class="card-body">
   <h6 class="card-title">تایید مدارک</h6>

  <script>
    var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png", ".ico"];
  function Validate(oForm) {
      var arrInputs = oForm.getElementsByTagName("input");
      for (var i = 0; i < arrInputs.length; i++) {
          var oInput = arrInputs[i];
          if (oInput.type == "file") {
              var sFileName = oInput.value;
              if (sFileName.length > 0) {
                  var blnValid = false;
                  for (var j = 0; j < _validFileExtensions.length; j++) {
                      var sCurExtension = _validFileExtensions[j];
                      if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                          blnValid = true;
                          break;
                      }
                  }

                  if (!blnValid) {
                      alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                      return false;
                  }

              }
          }
      }

      return true;
  }
  </script>


     <script type="text/javascript">
      $(document).ready(function(){
          $('#file').change(function(){
                 var fp = $("#file");
                 var lg = fp[0].files.length; // get length
                 var items = fp[0].files;
                 var fileSize = 0;

             if (lg > 0) {
                 for (var i = 0; i < lg; i++) {
                     fileSize = fileSize+items[i].size; // get file size
                 }
                 if(fileSize > 10447152) {
                      alert('حجم فایل آپلود شده نمی تواند بیشتر از 10 مگابایت باشد!');
                      $('#file').val('');
                 }
             }
          });
      });
      </script>






   @if ($authentication->document_verify=='active')
   @if (empty($authentication->document))
  <form class="form-horizontal" method="POST" action="verificationdoc/post/3"   enctype="multipart/form-data"  onsubmit="return Validate(this);" >

    @include('admin.layouts.errors')
   <div class="d-flex align-items-center hover-pointer">
   <div class="mr-2">


  <div class="form-group" >
  <label for="file"> آپلود مدارک   </label>
  <input type="file" name="file"    id="file" autocomplete="off"  name="file" required >
  </div>



   </div>
   </div>




  <div class="input-group">
   <div class="input-group-btn">
  <button type="submit" class="btn btn-primary  btn-icon-text">
   <i class="btn-icon-prepend" data-feather="send"></i>
  ارسال مدارک
  </button>
   </div>
   </div>







    @method('PUT')
    @csrf
  </form>


   @elseif($authentication->document)


   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
   <div class="alert alert-warning alert-dismissible fade show" role="alert">
   <strong><b> <i data-feather="alert-circle"></i> &nbsp; مدارک شما در انتظار تایید مدیریت می باشد   </b>  </strong> <br>
  </div>
  </div>
  </div>

   @endif
   @endif



   @if ($authentication->document_verify=='active')


   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
   <div class="alert alert-success alert-dismissible fade show" role="alert">
   <strong><b> <i data-feather="check-circle"></i> &nbsp; مدارک شما به تایید مدیریت رسید   </b>  </strong> <br>
  </div>
  </div>
  </div>

   @endif



   @if ($authentication->document_verify=='reject')


   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
   <div class="alert alert-danger alert-dismissible fade show" role="alert">
   <strong><b> <i data-feather="x-circle"></i> &nbsp; متاسفانه مدارک شما توسط مدیریت رد شد    </b>  </strong> <br>
  </div>
  </div>
  </div>




   <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
   <div class="d-flex align-items-center hover-pointer">
  <i data-feather="alert-circle"></i>
   <div class="mr-2">
   <p>توضیحات : text</p>
   </div>
   </div>
   </div>


  <form class="form-horizontal" method="POST" action="verificationdoc/post/3"   enctype="multipart/form-data"  onsubmit="return Validate(this);" >


    @include('admin.layouts.errors')

   <div class="d-flex align-items-center hover-pointer">
   <div class="mr-2">

  <div class="form-group" >
  <input type="text" class="form-control" id="exampleInputUsername1" autocomplete="off" placeholder="نام و نام خانوادگی" name="name" @if ($authentication->user->name) value="{{$authentication->user->name}}"@else value="{{ old('name') }}" @endif  required>
  </div>


  <div class="form-group" >
  <label for="file"> آپلود مدارک   </label>
  <input type="file" name="file"    id="file" autocomplete="off"  name="file" required >
  </div>



   </div>
   </div>




  <div class="input-group">
   <div class="input-group-btn">
  <button type="submit" class="btn btn-primary  btn-icon-text">
   <i class="btn-icon-prepend" data-feather="send"></i>
    ارسال مدارک
  </button>
   </div>
   </div>







    @method('PUT')
    @csrf
  </form>




   @endif






   </div>
   </div>
   </div>
   </div>


   @if ($authentication->document)
   @include('admin.layouts.table.avatarnul', [  'avatarimage' => $authentication->document , 'class'=>'' , 'style' => 'height: 160px;width: 240px;'  ])


  @else


  @endif












  </div>





  <div class="tab-pane pt-3 fade  @if(Session::get('errus')=='7') show active @endif" id="icon-credit" role="tabpanel" aria-labelledby="icon-credit-tab">





  <form method="post" class="forms-sample"   enctype="multipart/form-data"  onsubmit="return Validate(this);"   action="{{env('APP_URL')}}/user/addcardbank">
  <div class="row">


  <div class="col-sm-6">




  <div class="form-group row">
   <label for="exampleInputUsername2" class="col-sm-3 col-form-label">شماره کارت بانکی</label>
   <div class="col-sm-8">
  <input class="form-control" data-inputmask-alias="9999-9999-9999-9999" inputmode="text"   placeholder="شماره کارت بانکی"  name="numcard" >
   </div>
   </div>


  <div class="form-group row">
   <label for="exampleInputUsername2" class="col-sm-3 col-form-label">شماره شبا</label>
   <div class="col-sm-8">
  <input type="text" class="form-control"  id="numshaba"  dir="ltr"  autocomplete="off"      placeholder="شماره شبا" name="numshaba"  value="IR"    >
   </div>
   </div>








  </div>


  <div class="col-sm-6">




  <div class="form-group row">
   <label for="exampleInputUsername2" class="col-sm-3 col-form-label">نام بانک</label>
   <div class="col-sm-8">
   <select class="form-control" id="exampleFormControlSelect1" name="bank" >

   <option value="" ></option>
   <option value="بانک آینده" >بانک آینده</option>
   <option value="بانک اقتصاد نوین" >بانک اقتصاد نوین</option>
   <option value="بانک انصار" >بانک انصار</option>
   <option value="بانک ایران زمین" >بانک ایران زمین</option>
   <option value="بانک پارسیان" >بانک پارسیان</option>
   <option value="بانک پاسارگاد" >بانک پاسارگاد</option>
    </select>
   </div>
   </div>

  <div class="form-group" >
   <label for="exampleInputUsername2" class="col-sm-3 col-form-label"> </label>
  <label for="file"> برای اپلود کارت بانکی کلیک کنید
     </label>
  <input type="file" name="file"    id="file" autocomplete="off"  name="file" required >
  </div>



   <input type="hidden" name="nameuser" value="{{$authentication->user->name}}">



    @method('PUT')
    @csrf


      <hr>


  <div class="form-group row">
   <label for="exampleInputUsername2" class="col-sm-3 col-form-label"> </label>
   <div class="col-sm-8">
   <div class="input-group-btn">
  <button type="submit" class="btn btn-success btn-lg btn-icon-text">
   <i class="btn-icon-prepend" data-feather="save"></i>
    ذخیره
  </button>
   </div>
   </div>
   </div>






  </div>


  <div class="col-sm-12">
   <hr>

  </div>


  </div>
  </form>

  <div class="row">


                  <div class="table-responsive">

  @if($bank_accounts)
                    <table id="dataTableExample" class="table">
                      <thead>
                          <tr>
                                <th>ردیف</th>
                                <th>نام بانک </th>
                                <th>شماره کارت بانکی </th>
                                <th>شماره شبا </th>
                                <th>تاریخ ایجاد</th>
                          </tr>
                      </thead>
                      <tbody>

  @foreach($bank_accounts as $key => $bank_account)



   <tr>
   <td>{{ $key + 1 }}</td>
   <td>{{$bank_account->name}} </td>
   <td>{{$bank_account->card}} </td>
   <td>{{$bank_account->shaba}} </td>
   <td>{{ date_frmat($bank_account->created_at) }}</td>
   </tr>




  @endforeach



                      </tbody>
                    </table>

  @endif

                  </div>

  </div>
  </div>



  </div>

                      </div>
                    </div>










              </div>
            </div>




               </div>

        </div>


    @slot('script')

    <script src="{{ asset('template/assets/vendors/feather-icons/feather.min.js') }}"></script>
    <script src="{{ asset('template/assets/vendors/datatables.net/jquery.dataTables-ltr.js') }}"></script>
    <script src="{{ asset('template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4-ltr.js') }}"></script>
    <script src="{{ asset('template/assets/js/data-table-ltr.js') }}"></script>
    @endslot
@endcomponent
