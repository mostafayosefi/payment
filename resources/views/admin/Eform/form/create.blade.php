  @component('admin.layouts.content', [
      'title' => 'ایجاد فرم',
      'tabTitle' => 'ایجاد فرم',
      'breadcrumb' => [['title' => 'لیست فرم ها', 'url' => route('admin.form.form_category.index')], ['title' => 'ایجاد فرم',
      'class' => 'active']],
      ])



@slot('style')






<script>
    function fetch_myselect_4(vall){
        var vall = document.getElementById("form_category_id").value;$.ajax({
            type: 'get',
            url: '../../../admin/fetch/form_subcategory/'+vall+'',
        data: {get_option:vall},
        success: function (response) {document.getElementById("form_subcategory_id").innerHTML=response;}
    });
        }
</script>






@endslot




      <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
              <div class="row flex-grow">




                  <div class="col-md-12 grid-margin stretch-card">
                      <div class="card">
                          <div class="card-body">

                              <div class="card-header card-header-border-bottom">
                                  <h4> ایجاد فرم </h4>
                              </div>

                              <br>


                              @include('admin.layouts.errors')


                              <form class="forms-sample" method="POST" action="{{ route('admin.form.form.store') }}"
                                  enctype="multipart/form-data" onsubmit="return Validate(this);">
                                  @csrf
                                  <div class="row">

                                      <div class="col-sm-12">




                                        <div class="col-md-12">
                                            <label for="categorybrand">   دسته بندی فرم     </label>
                                            <select name="form_category_id" id="form_category_id"
                                            class="elementor-field elementor-size-sm  elementor-field-textual"
                                            placeholder=""   aria-required="true"  onchange="fetch_myselect_4(this.value);"   style="font-size: 18px;"   >
                                             <option value="">لطفا دسته فرم را انتخاب نمایید  </option>
                                             @foreach ($form_categories as $form_category  )
                                            <option value="{{$form_category->id}}"
                                                   >{{$form_category->name}}</option>
                                            @endforeach
                                        </select>
                                        </div>


                                        <div class="col-md-12">
                                            <label for="categorybrand">   زیرگروه   </label>
                                            <select name="form_subcategory_id" id="form_subcategory_id"
                                            class="elementor-field elementor-size-sm  elementor-field-textual"
                                            placeholder=""   aria-required="true"    style="font-size: 18px;"   >
                                             <option value="">لطفا زیرگروه را انتخاب نمایید  </option>

                                        </select>
                                        </div>


                                          <div class="form-group">
                                              <label for="group">group</label>
                                              <input type="text" class="form-control" id="group" autocomplete="off"
                                                  placeholder="group " name="group" value="{{ old('group') }}">
                                          </div>

                                          <div class="form-group">
                                              <label for="subgroup">subgroup</label>
                                              <input type="text" class="form-control" id="subgroup" autocomplete="off"
                                                  placeholder="subgroup " name="subgroup" value="{{ old('subgroup') }}">
                                          </div>

                                          <div class="form-group">
                                              <label for="name">نام فرم</label>
                                              <input type="text" class="form-control" id="name" autocomplete="off"
                                                  placeholder=" نام فرم  " name="name" value="{{ old('name') }}">
                                          </div>

                                          <div class="form-group">
                                              <label for="link">لینک فرم</label>
                                              <input type="text" class="form-control" id="link" autocomplete="off"
                                                  placeholder=" لینک فرم  " name="link" value="{{ old('link') }}"   >
                                          </div>




                                          <hr>
                                          <div class="form-group" >
                                          <label for="exampleInputUsername1"> آپلود عکس </label>
                                          <input type="file"     id="exampleInputUsername1" autocomplete="off"  name="image" >
                                          </div>



                                          <div class="card-footer">
                                              <a href="{{ route('admin.form.form.index') }}" class="btn btn-danger">بازگشت</a>
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
