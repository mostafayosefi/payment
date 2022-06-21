  @component('admin.layouts.content', [
      'title' => 'مدیریت فیلدهای فرم',
      'tabTitle' => ' مدیریت فیلدهای فرم',
      'breadcrumb' => [['title' => 'لیست دسته بندی ها', 'url' => route('admin.form.form_coloumn.index')], ['title' => 'مدیریت فیلدهای فرم  ',
      'class' => 'active']],
      ])




      <div class="row">

                  <div class="col-lg-12 col-md-12 col-md-12 grid-margin stretch-card">
                      <div class="card">
                          <div class="card-body">

                              <div class="card-header card-header-border-bottom">
                                  <h4>جزییات فیلدهای فرم</h4>
                              </div>

                              <br>


                              @include('admin.layouts.errors')


                                  <div class="row">

                                    <div class="col-lg-12 col-md-12 col-md-12 ">

                                        <div class="form-group">
                                            <label for="name">نام دسته بندی</label>
                                            <input type="text" class="form-control" id="name" autocomplete="off"
                                                 name="name" value="{{$form->name}}"  disabled >
                                        </div>

                                        <div class="form-group">
                                            <label for="link">لینک</label>
                                            <input type="text" class="form-control" id="link" autocomplete="off"
                                                 name="link" value="{{$form->link}}"  disabled >
                                        </div>





                                          <div class="card-footer">
                                              <a href="{{ route('admin.form.form.index') }}" class="btn btn-danger">  مشاهده دسته بندی ها</a>
                                          </div>



                                    </div>






                                  </div>




                          </div>
                      </div>
                  </div>


                  <div class="col-lg-12 col-md-12 col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">

                            @include('admin.Eform.form_coloumn.table_index', [ 'form' => $form   ])

                            @include('admin.Eform.form_coloumn.modal_create', [ 'form' => $form  ,  'form_fields' => $form_fields  , 'route' => route('admin.form.form_coloumn.store') ])


                        </div>
                        </div>
                        </div>




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
