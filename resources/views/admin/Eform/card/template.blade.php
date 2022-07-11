



                    <div class="container">
                        <div class="page-content">


{{-- @if($form->form_subcategory->form_category->link=='Money') --}}
@if($form->form_template->link=='template_money')

                            <div class="row">
                              <div class="col-12 col-xl-12 stretch-card">
                                <div class="row flex-grow">
                                  <div class="col-md-1 grid-margin stretch-card">
                                  </div>
                                  <div class="col-md-10 grid-margin stretch-card">

@include('admin.Eform.card.pack' , [ 'name_pack' => 'header_form' , $form  ])

                                  </div>
                                  <div class="col-md-1 grid-margin stretch-card">
                                  </div>
                                  <div class="col-md-1 grid-margin stretch-card">
                                  </div>
                                  <div class="col-md-10 grid-margin stretch-card">
                                    <div class="card">
                                      <div class="card-body">

                    <form method="post" class="forms-sample"   enctype="multipart/form-data"  onsubmit="return Validate(this);"
                    onchange="totalIt()" action="{{route('admin.form.form_data.update', $form_data_list->id)}}">
                    <div class="row">
                    <div class="col-sm-12">
                        @include('admin.layouts.errors')

                                </div>
                  <div class="col-sm-6">

{{--
                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-3 col-form-label">نام کاربری</label>
                     <div class="col-sm-8">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off" placeholder="نام کاربری" name="name"
                     value="{{$user->username}}"  required >
                     </div>
                     </div>


                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-3 col-form-label">تلفن همراه</label>
                     <div class="col-sm-8">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off" placeholder="تلفن همراه" name="name"
                     value="{{$user->tell}}"  required >
                     </div>
                     </div>


                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-3 col-form-label">ایمیل</label>
                     <div class="col-sm-8">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off" placeholder=" ایمیل " name="name"
                     value="{{$user->email}}"  required >
                     </div>
                     </div> --}}

                     @include('admin.Eform.card.pack' , [ 'name_pack' => 'sans_textaria' ,
                      $form , $form_data , $form_data_list ])


{{--
                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-2 col-form-label">کدتخفیف</label>
                     <div class="col-sm-5">
                     <input type="text" class="form-control rounded-pill" id="chatForm" placeholder=" ">
                     </div>
                     <div class="col-sm-5">
                     <button type="button" class="btn btn-success ">
                    بررسی کدتخفیف
                     </button>
                     </div>
                     </div> --}}





                    </div>


                    <div class="col-sm-6">


                        @include('admin.Eform.card.pack' , [ 'name_pack' => 'price' , 'disable_currency' => ''  , 'disable_price' => ''
                         , $currencies , 'price' => 0 , 'mycurrency' => 1 , $form , $form_data , $form_data_list ])



{{--

                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-3 col-form-label">نوع سرویس</label>
                     <div class="col-sm-8">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off" placeholder=" نوع سرویس " name="name"
                     value="{{$form->name}}"  required >
                     </div>
                     </div>



                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-4 col-form-label">قیمت سرویس
                    </label>
                     <div class="col-sm-7">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off"    placeholder="قیمت سرویس" name="name"
                    value="0"  required >
                     </div>
                     </div>

                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-4 col-form-label">قیمت واحد ارز ( ريال )
                    </label>
                     <div class="col-sm-7">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off" placeholder=" قیمت واحد ارز ( ريال ) "
                    name="name"  value="0 ريال"  required >
                     </div>
                     </div>


                    <div class="form-group row">
                     <label for="exampleInputUsername2" class="col-sm-4 col-form-label">قیمت سرویس به ریال
                    </label>
                     <div class="col-sm-7">
                    <input type="text" class="form-control" id="name" disabled="" autocomplete="off" placeholder=" قیمت سرویس به ریال "
                     name="name"  value="0 ریال"  required >
                     </div>
                     </div>
 --}}


                    </div>




                    <div class="col-sm-12">



                     @csrf




                     @include('admin.Eform.card.pack' , [ 'name_pack' => 'only_textaria' ,
                      $form , $form_data , $form_data_list ])




@include('admin.Eform.card.pack' , [ 'name_pack' => 'btn' , $guard ])




                    </div>



                    </div>

                    </form>








                                      </div>
                                    </div>
                                  </div>



                                  <div class="col-md-1 grid-margin stretch-card">
                                  </div>



                                 </div>
                                </div>
                               </div>

                               @endif


                               @if($form->form_template->link=='template_Physicalcard')


                            <div class="row">
                                <div class="col-12 col-xl-12 stretch-card">
                                  <div class="row flex-grow">
                                    <div class="col-md-1 grid-margin stretch-card">
                                    </div>
                                    <div class="col-md-10 grid-margin stretch-card">

  @include('admin.Eform.card.pack' , [ 'name_pack' => 'header_form' , $form  ])

                                    </div>
                                    <div class="col-md-1 grid-margin stretch-card">
                                    </div>
                                    <div class="col-md-1 grid-margin stretch-card">
                                    </div>
                                    <div class="col-md-10 grid-margin stretch-card">
                                      <div class="card">
                                        <div class="card-body">

                      <form method="post" class="forms-sample"   enctype="multipart/form-data"  onsubmit="return Validate(this);"
                      onchange="totalIt()" action="{{route('admin.form.form_data.update', $form_data_list->id)}}">
                      <div class="row">
                      <div class="col-sm-12">
                          @include('admin.layouts.errors')

                                  </div>
                    <div class="col-sm-6">


                        @include('admin.Eform.card.pack' , [ 'name_pack' => 'input_name' , $user ])
                        @include('admin.Eform.card.pack' , [ 'name_pack' => 'input_tell' , $user ])
                        @include('admin.Eform.card.pack' , [ 'name_pack' => 'input_email' , $user ])



                       @include('admin.Eform.card.pack' , [ 'name_pack' => 'sans_textaria' ,
                        $form , $form_data , $form_data_list ])


  {{--
                      <div class="form-group row">
                       <label for="exampleInputUsername2" class="col-sm-2 col-form-label">کدتخفیف</label>
                       <div class="col-sm-5">
                       <input type="text" class="form-control rounded-pill" id="chatForm" placeholder=" ">
                       </div>
                       <div class="col-sm-5">
                       <button type="button" class="btn btn-success ">
                      بررسی کدتخفیف
                       </button>
                       </div>
                       </div> --}}





                      </div>


                      <div class="col-sm-6">


                          @include('admin.Eform.card.pack' , [ 'name_pack' => 'price' , 'disable_currency' => ''  , 'disable_price' => ''
                           , $currencies , 'price' => $form->money  , 'mycurrency' => 1 , $form , $form_data , $form_data_list ])




                      </div>




                      <div class="col-sm-12">



                       @csrf




                       @include('admin.Eform.card.pack' , [ 'name_pack' => 'only_textaria' ,
                        $form , $form_data , $form_data_list ])




  @include('admin.Eform.card.pack' , [ 'name_pack' => 'btn' , $guard ])




                      </div>



                      </div>

                      </form>








                                        </div>
                                      </div>
                                    </div>



                                    <div class="col-md-1 grid-margin stretch-card">
                                    </div>



                                   </div>
                                  </div>
                                 </div>





                               @endif



                    </div>


                    </div>





















