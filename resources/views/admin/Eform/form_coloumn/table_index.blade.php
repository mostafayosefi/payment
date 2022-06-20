

<div class="row">
    <div class="col-md-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          <h6 class="card-title">لیست فیلدها </h6>
          <div class="table-responsive">

@if($form->form_coloumns)
            <table id="dataTableExample" class="table">
              <thead>
                <tr>
                  <th>ردیف</th>
                  <th> نام فیلد</th>
                  <th>لینک فیلد</th>
                  <th>ویرایش  </th>
                  <th>حذف  </th>
                </tr>
              </thead>
              <tbody>


@foreach($form->form_coloumns as $key => $admin)
                <tr>
                    <td>{{ $key + 1 }}</td>
<td>{{$admin->name}} </td>

<td>{{$admin->link}} </td>


<td>
    <a href="{{ route('admin.form.form_coloumn.edit', $admin) }}">
    <span class="btn btn-primary" >  <i data-feather="edit"></i></span>
    </a>
    </td>


<td>
    @include('admin.layouts.table.modal', [$admin ,'route' => route('admin.form.form_coloumn.destroy', $admin) , 'myname' => $admin->name ])
    </td>
                </tr>
@endforeach



              </tbody>
            </table>

@endif

          </div>
        </div>
      </div>
    </div>
  </div>




