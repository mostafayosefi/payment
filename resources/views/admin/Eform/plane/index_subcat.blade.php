@if ( $planes)
@php
$title_name= 'مدیریت '.$planes->name;
$breadcrumb   = [
['title' => 'مدیریت '.$planes->form_category->name, 'url' => route('admin.form.plane.index' , $planes->form_category->link )],
['title' => 'مدیریت '.$planes->name, 'url' => route('admin.form.plane.index_subcat' , [$planes->form_category->link  , $planes->link ] )],
         ['title' => '  مشاهده  ', 'class' => 'active']
        ]  ;  @endphp
@else
@php
$title_name='404';
$breadcrumb =  [
        ['title' => '  صفحه موردنظر وجود ندارد!  ', 'class' => 'active']
        ]  ;  @endphp
@endif



@component('admin.layouts.content',[
    'title'=>$title_name,
    'tabTitle'=>$title_name,
    'breadcrumb'=>  $breadcrumb
    ])



@slot('style')
<link rel="stylesheet" href="{{ asset('template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
@endslot




@if($planes == Null)
@include('admin.errors.404')
@elseif($planes != Null)

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



    @slot('script')
    <script src="{{ asset('template/assets/vendors/datatables.net/jquery.dataTables-ltr.js') }}"></script>
    <script src="{{ asset('template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4-ltr.js') }}"></script>
    <script src="{{ asset('template/assets/js/data-table-ltr.js') }}"></script>
    @endslot
@endcomponent
