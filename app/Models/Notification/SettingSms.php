<?php

namespace App\Models\Notification;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SettingSms extends Model
{


    protected $fillable = [
        'name',  'username',  'password',  'url',  'api',  'token',   'status',
    ];

}
