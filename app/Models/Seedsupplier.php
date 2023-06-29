<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seedsupplier extends Model
{
    use HasFactory;
    protected $fillable = [
        'madoanhnghiep',
        'tencoso',
        'chucoso',
        'nguoidaidienphaply',
        'diachi',
        'sodienthoai',
        'mota',
        'thumb',
    ];
}
