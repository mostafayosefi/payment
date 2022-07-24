
  <div class="row"> 
  
    <div class="col-md-12 grid-margin">
     <div class="card rounded">
     <div class="card-body">
     <h6 class="card-title">وریفای ایمیل</h6>
     
     
     
     
    
    @if ($authentication->email_verify == 'inactive')  
     
     
     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
    <i data-feather="mail"></i>
     <div class="mr-2">
     <p>{{$authentication->email}}</p> 
     </div>
     </div>
    
      
    <form class="forms-sample"  method="POST" action="#"    >
    
      @include('admin.layouts.errors')
       
      <input  type="hidden" class="form-control" name="email" value="{{$authentication->email}}" maxlength="44"    />
      <button  class="btn btn-success btn-block"><i data-feather="send"></i>ارسال کد وریفای به ایمیل</button> 
    
      @method('PUT')
      @csrf
    </form>
     
    
    </div> 
    
    
     
     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
    <i data-feather="alert-circle"></i>
     <div class="mr-2">
     <p>جهت فعالسازی ایمیل لطفا اقدام نمایید</p> 
     </div>
     </div>
    
      
    <form class="forms-sample"  method="POST" action="#"    >
           
      @include('admin.layouts.errors')
       
    <div class="input-group">
                        <div class="input-group-btn">
                          <button   class="btn btn-primary btn-block btn-flat">فعالسازی ایمیل</button>
                        </div><!-- /btn-group -->
     <input  type="text"  name="codemail"  class="form-control" placeholder="کدفعالسازی">
                      </div> 
    
    
     
      @method('PUT')
      @csrf
    </form>
     
    
    </div> 
    
    
    @elseif ($authentication->email_verify == 'active')  
     
    
    
     <div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
     <div class="d-flex align-items-center hover-pointer">
          
     <div class="alert alert-success alert-dismissible fade show" role="alert">
       
     <strong><b> <i data-feather="check-circle"></i> &nbsp; {{$authentication->email}}  </b>  </strong> <br>     
     <span>     ایمیل من قبلا فعال شده است  <i data-feather="mail"></i> </span><br>   
     
    </div> 
     </div>  
    </div> 
    
    @endif
    
    
     
    
    
                   
     </div>
     </div>									
                          
                            </div>
                            </div>