<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class add_to_cart extends Model
{
    protected $table = "add_to_carts";
    protected $fillable = [
        'product_id',
        'price',
        'quantity',
        'order_submit',
    ];
    public function product()
    {
        return $this->belongsTo('App\Models\products', 'product_id', 'id');
    }
}
