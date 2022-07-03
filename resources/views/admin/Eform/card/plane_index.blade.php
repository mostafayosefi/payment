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


                        @foreach($planes->form_subcategories as $admin)
                            <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-center text-uppercase mt-3 mb-4">{{$admin->name}}</h5>

                                        @include('admin.layouts.table.avatarnul', [  'avatarimage' => $admin->image , 'class'=>'img-fluid' , 'style' => ''  ])

                                        <hr>

                                        <p>
                                            <!--
<?php echo mb_substr($admin->short, 0, 125, mb_detect_encoding($admin->short)).'...'; ?>
                                                -->
                                            <?php echo $admin->short; ?>
                                        </p>
                                        <hr>

                                        <a href="{{route('admin.form.plane.index_subcat' , [ $link_cat , $admin->link ] )}}" class="btn btn-primary d-block mx-auto mt-4"><h5 class="text-center font-weight-light">
                                                مدیریت {{$admin->name}}

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
                    <h4 class="text-center mb-3 mt-4"> {{$planes->name}}</h4>
                    <div class="container">
                        <div class="row">

                            @foreach($planes->form_subcategories as $admin)
                                <div class="col-md-3 stretch-card grid-margin grid-margin-md-0">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="text-center text-uppercase mt-3 mb-4">{{$admin->name}}</h5>

                                            <a href="{{route('user.payment.plane.index_subcat' , [ $link_cat , $admin->link ] )}}" >
                                                @include('admin.layouts.table.avatarnul', [  'avatarimage' => $admin->image , 'class'=>'img-fluid' , 'style' => ''  ])

                                            <hr>

                                            <a href="{{route('user.payment.plane.index_subcat' , [ $link_cat , $admin->link ] )}}" class="btn btn-success d-block btn-lg   rounded-pill mx-auto mt-4">مشاهده سرویس ها  </a>

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
