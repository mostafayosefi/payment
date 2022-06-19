
    <div class="form-group" >
        <label for="{{$index_id}}">{{$name_select}}</label>
            <select  class="js-example-basic-single w-100"     name="{{$index_id}}"   style="font-size: 18px;" {{$required}}
             @if($index_id=='form_category_id') id="form_category_id"  onchange="fetch_myselect_4(this.value);"   @endif
             @if($index_id=='form_subcategory_id') id="form_subcategory_id"    @endif
              @if($index_id=='user_id') id="language"   onChange="totalIt()"  @endif
               >
            <option value="">لطفا {{$name_select}} مورد نظر را انتخاب نمایید</option>
            @if($allforeachs)
            @foreach($allforeachs as $option)
            <option value="{{$option->id}}"  {{($option->id  == $value ? 'selected' : '')}}  >
                {{$option->$input_name}}</option>
            @endforeach

            @endif
        </select>
        </div>
