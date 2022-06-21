

          <li class="nav-item nav-category"> مدیریت فرم ها  </li>

          <li class="nav-item  {{ isActive(['admin.form.form_category.index' , 'admin.form.form_category.create' , 'admin.form.form_category.edit' , 'admin.form.form_category.show' ,
           'admin.form.form_subcategory.index' , 'admin.form.form_subcategory.create' , 'admin.form.form_subcategory.edit'  , 'admin.form.form_subcategory.show' ])}}  ">
            <a class="nav-link" data-toggle="collapse" href="#form_category" role="button" aria-expanded="false" aria-controls="form_category">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت دسته بندی فرم</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  {{ isShow(['admin.form.form_category.index' , 'admin.form.form_category.create' , 'admin.form.form_category.edit' , 'admin.form.form_category.show' ,
            'admin.form.form_subcategory.index' , 'admin.form.form_subcategory.create' , 'admin.form.form_subcategory.edit'  , 'admin.form.form_subcategory.show' ])}}   "  id="form_category">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{ route('admin.form.form_category.index') }}" class="nav-link   {{ isActive(['admin.form.form_category.index'   , 'admin.form.form_category.edit' , 'admin.form.form_category.show' ,
 'admin.form.form_subcategory.index'  , 'admin.form.form_subcategory.edit'  , 'admin.form.form_subcategory.show' ]) }}  ">مشاهده دسته بندی فرم</a>
                </li>

                <li class="nav-item">
 <a href="{{ route('admin.form.form_category.create') }}" class="nav-link   {{ isActive(['admin.form.form_category.create']) }}  ">ثبت دسته بندی فرم</a>
                </li>

                <li class="nav-item">
 <a href="{{ route('admin.form.form_subcategory.create') }}" class="nav-link   {{ isActive(['admin.form.form_subcategory.create']) }}  ">زیرگروه دسته بندی فرم</a>
                </li>
              </ul>
            </div>
          </li>


          <li class="nav-item  {{ isActive(['admin.form.form_field.create' , 'admin.form.form_field.index' , 'admin.form.form_field.edit'])}}  ">
            <a class="nav-link" data-toggle="collapse" href="#form_field" role="button" aria-expanded="false" aria-controls="form_field">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">  مدیریت نوع فیلدها </span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  {{ isShow(['admin.form.form_field.create' , 'admin.form.form_field.index', 'admin.form.form_field.edit'])}}   "  id="form_field">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{ route('admin.form.form_field.create') }}" class="nav-link   {{ isActive(['admin.form.form_field.create']) }}  ">ایجاد نوع فیلد</a>
                </li>
                <li class="nav-item">
 <a href="{{ route('admin.form.form_field.index') }}" class="nav-link   {{ isActive(['admin.form.form_field.index', 'admin.form.form_field.edit']) }}  ">مشاهده نوع فیلدها </a>
                </li>
              </ul>
            </div>
          </li>





          <li class="nav-item  {{ isActive(['admin.form.form.create' , 'admin.form.form.index' , 'admin.form.form.edit' , 'admin.form.form.show' ,
          'admin.form.form_coloumn.create' , 'admin.form.form_coloumn.index' , 'admin.form.form_coloumn.edit' , 'admin.form.form_coloumn.show'])}}  ">
            <a class="nav-link" data-toggle="collapse" href="#form" role="button" aria-expanded="false" aria-controls="form">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">مدیریت فرم </span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  {{ isShow(['admin.form.form.create' , 'admin.form.form.index' , 'admin.form.form.edit', 'admin.form.form.show' ,
            'admin.form.form_coloumn.create' , 'admin.form.form_coloumn.index' , 'admin.form.form_coloumn.edit' , 'admin.form.form_coloumn.show'])}}   "  id="form">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{ route('admin.form.form.create') }}" class="nav-link   {{ isActive(['admin.form.form.create']) }}  ">ایجاد فرم</a>
                </li>
                <li class="nav-item">
 <a href="{{ route('admin.form.form.index') }}" class="nav-link   {{ isActive([  'admin.form.form.index' , 'admin.form.form.edit', 'admin.form.form.show' ,
   'admin.form.form_coloumn.index' , 'admin.form.form_coloumn.edit' , 'admin.form.form_coloumn.show']) }}  ">مشاهده فرمها </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('admin.form.form_coloumn.create') }}" class="nav-link   {{ isActive(['admin.form.form_coloumn.create']) }}  "> مدیریت فیلدها</a>
                 </li>
              </ul>
            </div>
          </li>


          <li class="nav-item  {{ isActive(['admin.form.form_coloumn_mult.create' , 'admin.form.form_coloumn_mult.index' , 'admin.form.form_coloumn_mult.edit'])}}  ">
            <a class="nav-link" data-toggle="collapse" href="#form_coloumn_mult" role="button" aria-expanded="false" aria-controls="form_coloumn_mult">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">  مدیریت پارامترهای فیلد   </span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse  {{ isShow(['admin.form.form_coloumn_mult.create' , 'admin.form.form_coloumn_mult.index', 'admin.form.form_coloumn_mult.edit'])}}   "  id="form_coloumn_mult">
              <ul class="nav sub-menu">
                <li class="nav-item">
 <a href="{{ route('admin.form.form_coloumn_mult.create') }}" class="nav-link   {{ isActive(['admin.form.form_coloumn_mult.create']) }}  ">ایجاد پارامتر</a>
                </li>
                <li class="nav-item">
 <a href="{{ route('admin.form.form_coloumn_mult.index') }}" class="nav-link   {{ isActive(['admin.form.form_coloumn_mult.index', 'admin.form.form_coloumn_mult.edit']) }}  ">    مدیریت پارامترها </a>
                </li>
              </ul>
            </div>
          </li>

