  @component('admin.layouts.content', [
      'title' => 'ویرایش پارامتر',
      'tabTitle' => ' ویرایش پارامتر',
      'breadcrumb' => [
        ['title' => 'مشاهده فرم ها', 'url' => route('admin.form.form.index')],
        ['title' => $form_coloumn_mult->form_coloumn->form->name , 'url' => route('admin.form.form.show', $form_coloumn_mult->form_coloumn->form_id )],
        ['title' => $form_coloumn_mult->form_coloumn->name , 'url' => route('admin.form.form_coloumn.index', $form_coloumn_mult->form_coloumn_id )],
        ['title' => $form_coloumn_mult->name , 'class' => 'active'],
        ['title' => 'ویرایش پارامتر  ', 'class' => 'active'],
    ],
      ])




      <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
              <div class="row flex-grow">


                  <div class="col-md-12 grid-margin stretch-card">
                      <div class="card">
                          <div class="card-body">

                              <div class="card-header card-header-border-bottom">
                                  <h4>ویرایش پارامتر </h4>
                              </div>

                              <br>


                              @include('admin.layouts.errors')


                              <form class="forms-sample" method="POST" action="{{ route('admin.form.form_coloumn_mult.update', $form_coloumn_mult) }}"
                                  enctype="multipart/form-data" onsubmit="return Validate(this);">
                                  @csrf
                                  <div class="row">

                                      <div class="col-sm-12">




                                        <div class="form-group">
                                            <label for="name">فرم  </label>
                                            <input type="text" class="form-control" id="form_id" autocomplete="off"
                                                placeholder="   فرم  " name="form_id" value="{{$form_coloumn_mult->form_coloumn->form->name}}" disabled >
                                        </div>

                                        <div class="form-group">
                                            <label for="name">فیلد  </label>
                                            <input type="text" class="form-control" id="form_coloumn_id" autocomplete="off"
                                                placeholder="   فیلد  " name="form_coloumn_id" value="{{$form_coloumn_mult->form_coloumn->name}}" disabled >
                                        </div>


                                        <div class="form-group">
                                            <label for="name">نام پارامتر</label>
                                            <input type="text" class="form-control" id="name" autocomplete="off"
                                                placeholder=" نام پارامتر  " name="name" value="{{$form_coloumn_mult->name}}">
                                        </div>






                                          @method('PUT')

                                          <div class="card-footer">
                                              <a href="{{route('admin.form.form_coloumn.show', $form_coloumn_mult->form_coloumn_id )}}" class="btn btn-danger">بازگشت</a>
                                              <button type="submit" class="btn btn-primary float-right">ویرایش</button>
                                          </div>


                                      </div>


                                  </div>

                              </form>



                          </div>
                      </div>
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
