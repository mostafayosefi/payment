@if($guard=='admin')

@endif


@if($guard=='user')





    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center mb-3 mt-4">{{$planes->name}}</h4>

                    <div class="container">



                        @if($planes->form_subcategory->form_category->link=='Money')



                        <div class="row">


                                <div class="col-md-3 stretch-card grid-margin grid-margin-md-0">
                                    <div class="card">
                                        <div class="card-body">

                                            <h5 class="text-center text-uppercase mt-3 mb-4">{{$planes->name}}</h5>

                                            @include('admin.layouts.table.avatarnul', [  'avatarimage' => $planes->image , 'class'=>'img-fluid' , 'style' => ''  ])


                                            <hr>






                                        </div>
                                    </div>
                                </div>



                        </div>



                        @endif



                    </div>
                </div>
            </div>
        </div>
    </div>

@endif
