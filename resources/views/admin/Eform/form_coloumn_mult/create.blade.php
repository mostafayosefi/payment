  @component('admin.layouts.content', [
      'title' => 'ثبت پارامتر',
      'tabTitle' => 'ثبت پارامتر',
      'breadcrumb' => [['title' => 'لیست پارامترها ', 'url' => route('admin.form.form_coloumn_mult.index')], ['title' => 'ثبت پارامتر',
      'class' => 'active']],
      ])

      @slot('style')

          <script>
              function fetch_form(val){
                  var vall = document.getElementById("form_id").value;$.ajax({
                      type: 'get',
                      url: '../../../admin/fetch/form/'+val+'',
                      data: {get_option:val},
                      success: function (response) {document.getElementById("form_coloumn_id").innerHTML=response;}
                  });
              }
          </script>
          <script>
              function fetch_form_coloumn(vall){
                  var vall = document.getElementById("form_coloumn_id").value;$.ajax({
                      type: 'get',
                      url: '../../../admin/fetch/form_coloumn/'+vall+'',
                      data: {get_option:vall},
                      success: function (response) {document.getElementById("form_coloumn_mults").innerHTML=response;}
                  });
              }
          </script>

      @endslot


      <div class="row">
          <div class="col-3 col-xl-3 stretch-card"></div>
          <div class="col-6 col-xl-6 stretch-card">


              <div class="row flex-grow">




                  <div class="col-md-12 grid-margin stretch-card">
                      <div class="card">
                          <div class="card-body">

                              <div class="card-header card-header-border-bottom">
                                  <h4> ثبت پارامتر </h4>
                              </div>

                              <br>


                              @include('admin.layouts.errors')

  <form class="forms-sample" method="POST" action="{{ route('admin.form.form_coloumn_mult.store') }}"
  enctype="multipart/form-data" onsubmit="return Validate(this);">
                                  @csrf
                                  <div class="row">

                                      <div class="col-sm-12">


@include('admin.layouts.table.selectbox', [ 'allforeachs' => $forms ,  'input_name' => 'name'  ,  'name_select' => '  فرم   ' ,  'value' =>   old('form_id') , 'required'=>'required'  , 'index_id'=>'form_id' ])
@include('admin.layouts.table.selectbox', [ 'allforeachs' => '' ,  'input_name' => 'name'  ,  'name_select' => '  فیلد   ' ,  'value' =>   old('form_coloumn_id') , 'required'=>'required'  , 'index_id'=>'form_coloumn_id' ])

                                          <div id="form_coloumn_mults" >

                                          </div>
     @include('admin.Eform.form_coloumn_mult.create_table', [ 'guard' =>   'admin' ])



                                          <div class="card-footer">
                                              <a href="{{ route('admin.form.form_coloumn_mult.index') }}" class="btn btn-danger">بازگشت</a>
                                              <button type="submit" class="btn btn-primary float-right">ثبت</button>
                                          </div>


                                      </div>


                                  </div>

                              </form>



                          </div>
                      </div>
                  </div>





              </div>
          </div>

          <div class="col-3 col-xl-3 stretch-card"></div>
      </div>










      @slot('script')


    <script src="{{ asset('template/assets/vendors/core/core.js') }}"></script>
    <script src="{{ asset('template/assets/vendors/tinymce-rtl/tinymce.min.js') }}"></script>
      <script src="{{ asset('template/assets/vendors/simplemde/simplemde.min.js') }}"></script>
      <script src="{{ asset('template/assets/vendors/ace-builds/src-min/ace.js') }}"></script>
      <script src="{{ asset('template/assets/vendors/ace-builds/src-min/theme-chaos.js') }}"></script>

      <script src="{{ asset('template/assets/vendors/feather-icons/feather.min.js') }}"></script>
      <script src="{{ asset('template/assets/js/template.js') }}"></script>
      <script src="{{ asset('template/assets/js/tinymce.js') }}"></script>
      <script src="{{ asset('template/assets/js/tinymce.js') }}"></script>
      <script src="{{ asset('template/assets/js/ace.js') }}"></script>




      @endslot
  @endcomponent