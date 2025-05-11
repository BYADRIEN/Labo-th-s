<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'ordres';
    protected $fillable = ['client_id', 'status', 'adress', 'fullname', 'phone'];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function client()
    {
        return $this->belongsTo('App\Models\Client');
    }

    public function orderItems()
    {
        return $this->hasMany('App\Models\OrderItem'); // ✅ hasMany
    }
}
