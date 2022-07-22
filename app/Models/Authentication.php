<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Authentication extends Model
{

    protected $fillable = [  'user_id' ,
       'email' ,   'email_verify' ,
       'tell' ,   'tell_verify' ,
       'tells' ,   'tells_verify' ,
       'cardmelli' ,   'cardmelli_verify' ,
       'selfi' ,   'selfi_verify' ,
       'document' ,   'document_verify' ,
     ];


    public function user() {
        return $this->belongsTo(User::class );
    }


}
