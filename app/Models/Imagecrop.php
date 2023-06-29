<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Imagecrop extends Model
{
    use HasFactory;
    protected $fillable = [
        'thumb',
        'id_crop'
    ];
}
