<?php

namespace App\Models\Eform;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormDataList extends Model
{

    protected $fillable = [
        'user_id',
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function form_datas(){
        return $this->hasMany(FormData::class , 'form_data_list_id');
    }



    public function form_data_mult(){
        return $this->hasOne(FormDataMult::class , 'form_data_list_id');
    }


}
