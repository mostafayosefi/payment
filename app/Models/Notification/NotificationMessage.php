<?php

namespace App\Models\Notification;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NotificationMessage extends Model
{


    protected $fillable = [
        'notification_list_id',
        'user_id',
        'text',
    ];


    

    public function notification_list(){
        return $this->belongsTo(NotificationList::class);
    }


    public function user(){
        return $this->belongsTo(User::class);
    }



}
