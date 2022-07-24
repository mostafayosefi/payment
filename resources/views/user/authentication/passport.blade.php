
   <div class="row">
    <div class="col-md-12 grid-margin">
     <div class="card rounded">
     <div class="card-body">
     <h6 class="card-title">تایید مدارک هویتی</h6>

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






     @if ($authentication->status=='inactive')
     @if (empty($authentication->passport_verify))
    <form class="form-horizontal" method="POST" action="verificationdoc/post/1"   enctype="multipart/form-data"  onsubmit="return Validate(this);" >

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


     @elseif($authentication->passport_verify)


     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
     <div class="alert alert-warning alert-dismissible fade show" role="alert">
     <strong><b> <i data-feather="alert-circle"></i> &nbsp; مدارک احرازهویت شما در انتظار تایید مدیریت می باشد   </b>  </strong> <br>
    </div>
    </div>
    </div>

     @endif
     @endif



     @if ($authentication->status=='active')


     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
     <div class="alert alert-success alert-dismissible fade show" role="alert">
     <strong><b> <i data-feather="check-circle"></i> &nbsp; مدارک احرازهویت شما به تایید مدیریت رسید   </b>  </strong> <br>
    </div>
    </div>
    </div>

     @endif



     @if ($authentication->status=='reject')


     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
     <div class="alert alert-danger alert-dismissible fade show" role="alert">
     <strong><b> <i data-feather="x-circle"></i> &nbsp; متاسفانه مدارک احرازهویت شما توسط مدیریت رد شد    </b>  </strong> <br>
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


    <form class="form-horizontal" method="POST" action="verificationdoc/post/1"   enctype="multipart/form-data"  onsubmit="return Validate(this);" >

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


     @if ($authentication->passport_verify)

  @include('admin.layouts.table.avatarnul', [  'avatarimage' => $authentication->passport , 'class'=>'' , 'style' => 'height: 160px;width: 240px;'  ])

    @else


    @endif

     