<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Billreceived extends Model
{
    use HasFactory;
    protected $fillable = [
        'quantity',
        'price',
        'total_price',
        'id_product',
        'list_saleroom',
        'shelf_life'
    ];
}
