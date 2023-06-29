<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class testQRController extends Controller
{
    public function index(){
        $image = \QrCode::format('png')
                    ->size(200)
                    ->generate('A simple example of QR code');


//                                    dd("hihi");
        $output_file = '/img/qr-code/img-' . time() . '.png';
        Storage::disk('public')->put($output_file, $image);
//        dd($image);
        return "success";
    }
}
