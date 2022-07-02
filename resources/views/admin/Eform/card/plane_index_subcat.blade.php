@if($guard=='admin')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center mb-3 mt-4">
                        مدیریت  {{$planes->name}}</h4>
                    <p class="text-muted text-center mb-4 pb-2">  جهت
                        مدیریت {{$planes->name}}
                        و همچنین مشاهده و ویرایش آن لطفا اقدام نمایید </p>
                    <div class="container">
                        <div class="row">


                            @foreach($planes->forms as $admin)
                                <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="text-center text-uppercase mt-3 mb-4">{{$admin->name}}</h5>

                                            @include('admin.layouts.table.avatarnul', [  'avatarimage' => $admin->image , 'class'=>'img-fluid' , 'style' => ''  ])

                                            <hr>

                                            <p>
                                                <!--
<?php echo mb_substr($admin->text, 0, 125, mb_detect_encoding($admin->text)).'...'; ?>
                                                    -->
                                                <?php echo $admin->text; ?>
                                            </p>
                                            <hr>


                                            @if(validate_price($admin->id,0,$admin->form_currency_id,'currency')=='0')
                                            <h3 class="text-center font-weight-light">
                                                {{number_format($admin->price,0)}}  ریال
                                            </h3>
                                            @endif


                                            <h6 class="text-muted text-center mb-4 font-weight-normal">

                                                @if($admin->form_currency_id)
                                                    @foreach ($currencies as $currency )
                                                        @if($admin->form_currency_id==$currency->id)
                                                            {{$admin->money}}

                                                            {{$currency->name}}
                                                        @endif
                                                    @endforeach
                                                @endif
                                            </h6>

                                            <a href="{{route('admin.form.plane.edit' , [ $planes->form_category->link  , $planes->link , $admin->link] )}}" class="btn btn-primary d-block mx-auto mt-4"><h5 class="text-center font-weight-light">
                                                    ویرایش
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

@endif


@if($guard=='user')





    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center mb-3 mt-4">{{$planes->name}}</h4>

                    <div class="container">



                        @if($planes->form_category->link=='giftcards')



                        @endif

                        <div class="row">


                            @foreach($planes->forms as $admin)
                                <div class="col-md-3 stretch-card grid-margin grid-margin-md-0">
                                    <div class="card">
                                        <div class="card-body">

                                            <h5 class="text-center text-uppercase mt-3 mb-4">{{$admin->name}}</h5>

                                            @include('admin.layouts.table.avatarnul', [  'avatarimage' => $admin->image , 'class'=>'img-fluid' , 'style' => ''  ])


                                            <hr>

                                            @if($planes->form_category->link!='giftcards')


                                                <p>
                                                    <!--
<?php echo mb_substr($admin->text, 0, 125, mb_detect_encoding($admin->text)).'...'; ?>
                                                        -->
                                                    <?php echo $admin->text; ?>
                                                </p>
                                                <hr>

                                            @endif
                                            @if($planes->form_category->link!='buywithcardinsite')



                                                <h3 class="text-center font-weight-light">
                                                    {{number_format($admin->price,0)}}  ریال
                                                </h3>


                                                <h6 class="text-muted text-center mb-4 font-weight-normal">



                                                    @if($admin->form_currency_id)
                                                        @foreach ($currencies as $currency )
                                                            @if($admin->form_currency_id==$currency->id)
                                                                {{$admin->money}}

                                                                {{$currency->name}}
                                                            @endif
                                                        @endforeach
                                                    @endif
                                                </h6>

                                            @endif




                                            @if($planes->form_category->link=='giftcards')
                                                <a href="#" class="btn btn-primary d-block btn-lg   rounded-pill mx-auto mt-4"  type="button"  data-toggle="modal" data-target="#exampleModalCenter{{$admin->id}}">ثبت سفارش <i data-feather="check-circle"></i> &nbsp;  </a>


{{--                                                {{env('APP_URL')}}/user/addreq/{{$plan}}/{{$giftcard->form_linkname}}--}}

                                                <form method="post" action="#">


                                                    <div class="example">


                                                        <!-- Modal -->
                                                        <div class="modal fade" id="exampleModalCenter{{$admin->id}}" tabindex="-1" role="dialog"
                                                             aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="exampleModalCenterTitle">{{$admin->name}}</h5>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">


                                                                        <div class="col-md-12 stretch-card grid-margin grid-margin-md-0">
                                                                            <div class="card">
                                                                                <div class="card-body">
                                                                                    <h5 class="text-center text-uppercase mt-3 mb-4">{{$admin->name}}</h5>


                                                                                    <p>

                                                                                        <?php echo $admin->text; ?>
                                                                                    </p>
                                                                                    <hr>





                                                                                    <h3 class="text-center font-weight-light">
                                                                                        {{number_format($admin->price,0)}}  ریال
                                                                                    </h3>


                                                                                    <h6 class="text-muted text-center mb-4 font-weight-normal">



                                                                                        @if($admin->form_currency_id)
                                                                                            @foreach ($currencies as $currency )
                                                                                                @if($admin->form_currency_id==$currency->id)
                                                                                                    {{$admin->money}}

                                                                                                    {{$currency->name}}
                                                                                                @endif
                                                                                            @endforeach
                                                                                        @endif
                                                                                    </h6>



                                                                                    <hr>

                                                                                    <div class="form-group row">
                                                                                        <label for="exampleInputUsername2" class="col-sm-2 col-form-label">کدتخفیف</label>
                                                                                        <div class="col-sm-5">
                                                                                            <input type="text" class="form-control rounded-pill" id="chatForm" placeholder=" " value="">
                                                                                        </div>
                                                                                        <div class="col-sm-5">
                                                                                            <button type="button" class="btn btn-success ">
                                                                                                بررسی کدتخفیف
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>





@method('put')
                                                                                    @csrf
                                                                                    <input type="hidden" name="price" value="{{$admin->price}}">

                                                                                    <button class="btn btn-primary d-block btn-lg   rounded-pill mx-auto mt-4"  type="submit">ثبت سفارش <i data-feather="check-circle"></i> &nbsp;  </button>




                                                                                </div>
                                                                            </div>
                                                                        </div>







                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">بستن</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>



                                                </form>

                                                <hr>






                                            @endif

{{--                                            @if(($plan=='visacart')||($plan=='paypal')||($plan=='skrill')||($plan=='allservice'))--}}
{{--                                                <a href="{{env('APP_URL')}}/user/order/{{$plan}}/{{$giftcard->form_linkname}}" class="btn btn-primary d-block btn-lg   rounded-pill mx-auto mt-4">ثبت سفارش  <i data-feather="check-circle"></i> &nbsp; </a>--}}
{{--                                            @endif--}}

{{--                                            @if($plan=='viscartfisics')--}}
{{--                                                <a href="{{env('APP_URL')}}/user/servicei1/order/{{$plan}}/{{$giftcard->form_linkname}}" class="btn btn-primary d-block btn-lg   rounded-pill mx-auto mt-4">ثبت سفارش  <i data-feather="check-circle"></i> &nbsp; </a>--}}
{{--                                            @endif--}}


{{--                                            @if($plan=='buywithcardinsite')--}}
{{--                                                <a href="{{env('APP_URL')}}/user/servicei2/order/{{$plan}}/{{$giftcard->form_linkname}}" class="btn btn-primary d-block btn-lg   rounded-pill mx-auto mt-4">ثبت سفارش <i data-feather="check-circle"></i> &nbsp; </a>--}}
{{--                                            @endif--}}




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

@endif
