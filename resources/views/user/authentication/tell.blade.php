
  <div class="row"> 
  
    <div class="col-md-12 grid-margin">
     <div class="card rounded">
     <div class="card-body">
     <h6 class="card-title">وریفای تلفن</h6> 
    
    @if ($authentication->tell_verify == 'inactive')  
     
     
     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
    <i data-feather="phone"></i>
     <div class="mr-2">
     <p>{{$authentication->tell}}</p> 
     </div>
     </div>
    
      
    <form class="forms-sample"  method="POST" action="{{env('APP_URL')}}/user/activition/telluseractivitionverfy"    >
    
      @include('admin.layouts.errors')
       
      <input  type="hidden" class="form-control" name="tell" value="{{$authentication->tell}}" maxlength="44"    />
      <button  class="btn btn-success btn-block"><i data-feather="send"></i>ارسال کد وریفای به تلفن همراه </button> 
    
     
      @method('PUT')
      @csrf
    </form>
     
    
    </div> 
    
    
     
     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
    <i data-feather="alert-circle"></i>
     <div class="mr-2">
     <p>جهت فعالسازی تلفن همراه لطفا اقدام نمایید</p> 
     </div>
     </div>
    
      
    <form class="forms-sample"  method="POST" action="{{env('APP_URL')}}/user/activition/telluseractivition"    >
      @include('admin.layouts.errors')
    <div class="input-group">
                        <div class="input-group-btn">
     <button   class="btn btn-primary btn-block btn-flat">فعالسازی تلفن همراه</button>
                        </div><!-- /btn-group -->
     <input  type="text"  name="codtell"  class="form-control" placeholder="کدفعالسازی">
                      </div> 
    
    
     
      @method('PUT')
      @csrf
    </form>
     
    
    </div> 
    
    
    @elseif ($authentication->tell_verify == 'active')  
     
    
    
     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
          
     <div class="alert alert-success alert-dismissible fade show" role="alert">
       
     <strong><b> <i data-feather="check-circle"></i> &nbsp; {{$authentication->tell}}  </b>  </strong> <br>     
     <span>     تلفن همراه من قبلا فعال شده است   <i data-feather="phone"></i> </span><br>   
     
    </div> 
     </div>  
    </div> 
    
    @endif
    
    
     
    
    
                   
     </div>
     </div>									
                          
                            </div>
                            </div>
    