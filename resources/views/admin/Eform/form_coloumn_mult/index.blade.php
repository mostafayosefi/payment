@component('admin.layouts.content',[
    'title'=>'مشاهده فیلدها',
    'tabTitle'=>'مشاهده فیلدها ',
    'breadcrumb'=>[
            ['title'=>'مشاهده فیلدها','class' => 'active']
    ]

    ])



@slot('style')
<link rel="stylesheet" href="{{ asset('template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
@endslot

@include('admin.Eform.fetch.form_coloumn' , [ $form_coloumn_mults ])

@slot('script')
    <script src="{{ asset('template/assets/vendors/datatables.net/jquery.dataTables-ltr.js') }}"></script>
    <script src="{{ asset('template/assets/vendors/datatables.net-bs4/dataTables.bootstrap4-ltr.js') }}"></script>
    <script src="{{ asset('template/assets/js/data-table-ltr.js') }}"></script>
    @endslot
@endcomponent
