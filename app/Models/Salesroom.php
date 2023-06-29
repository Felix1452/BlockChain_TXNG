<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Salesroom extends Model
{
    use HasFactory;
    protected $fillable = [
        'madoanhnghiep',
        'tencoso',
        'tennguoidaidien',
        'tenchucoso',
        'sodienthoai',
        'diachi',
        'mota',
        'thumb_saleroom',
    ];
}
