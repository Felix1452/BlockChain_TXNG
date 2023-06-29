<?php

namespace App\Http\Controllers;

use App\Http\BlockChain\Blockchain;
use App\Http\Services\BlockChainService;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;
use App\Http\Services\Slider\SliderService;
use App\Models\Billreceived;
use App\Models\Blockchaindb;
use App\Models\Product;
use App\Models\Salesroom;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Mail;
use Web3\Contract;
use App\Helpers\GlobalVariable;
use Web3\Web3;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TrangChuController extends Controller
{
    protected $sliderService;
    protected $menuService;
    protected $productService;
    public $blockchainService;
    public function __construct(MenuService $menuService, BlockChainService $blockChainService, SliderService $sliderService, ProductService $productService)
    {
        $this->blockchainService = $blockChainService;
        $this->sliderService = $sliderService;
        $this->menuService = $menuService;
        $this->productService = $productService;
    }
    public function index(){
        $day = Carbon::now()->dayOfYear;
//        dd($this->productService->getmain());
        return view('home',[
            'title' => 'Nông Sản',
            'menus'=>$this->menuService->show(),
            'sliders' =>$this->sliderService->show(),
            'products' =>$this->productService->getmain(),
            'day' => $day,
        ]);

//
////        $a = DB::select('select * from blockchaindbs');
////        $hoangChainLast = json_decode($a[0]->blockchain);
////        dd($hoangChainLast);
////        $hoangChain = new Blockchain(2);
////        $hoangChain->chain = $hoangChainLast->chain;
////        $hoangChain->difficulty = $hoangChainLast->difficulty;
////        return view('userView',[
////            "title"=>"Trang Chủ",
////        ]);
//        return response()->json(["QR code sai"]);
    }

    public function checkBlock($number, $blockchaindb){

        #========================================Backup====================================#
        try {
            if (!is_numeric($number)){
                return view('warning');
            }else{
//            dd("hello");
                $a = DB::select('select * from blockchaindbs');
                if (sizeof($a) <= 0){
                    $migrationFile = '2023_06_14_114601_drop_all_tables.php'; // Replace with your migration file name

                    try {
                        // Run the specific migration
                        Artisan::call('migrate', [
                            '--path' => 'database/migrations/' . $migrationFile,
                            '--force' => true, // Optional: Force the migration to run in production
                        ]);
                        $output = Artisan::output();
                        echo $output;
                        // Get the output of the migration command
                    } catch (\Exception $e) {
                        // Handle any exceptions that occur during the migration
//            echo "Migration failed: " . $e->getMessage();
                    }

                    $directoryPath = storage_path('app/backup');

                    $files = File::files($directoryPath);

                    if (!empty($files)) {
                        $latestFile = collect($files)->sortByDesc(function ($file) {
                            return $file->getMTime();
                        })->first();

                        $latestFilePath = $latestFile->getPathname();

                        echo $latestFilePath;
                    } else {
                        echo "No files found in the directory.";
                    }

                    $filePath = $latestFilePath;

                    // Get the SQL file content
                    $sql = file_get_contents($filePath);

                    // Run the SQL queries
                    DB::connection()->getPdo()->exec($sql);
                }
                $blockchain = $a[0]->blockchain;
                $blockchain = json_decode($blockchain);
                if (sizeof(($blockchain->chain)) <= (int)$number ){
                    return view('warning',[
                        'title'=>"Cánh Báo Mã QR Code Đã Bị Can Thiệp!",
                        'content'=>"Chúng tôi phát hiện mã QR code bạn vừa quét là giả hoặc đã bị can thiệp sửa đổi. Chúng tôi không có bất kỳ trách nhiệm nào đối với sản phẩm này. Nếu bạn muốn mua sản phẩm của chúng tôi vui lòng truy cập trang web nongsanvinhlongsv.click hoặc đến trực tiếp chuỗi cửa hàng của chúng tôi. Xin cảm ơn!",
                    ]);
                }
//            dd("hi");
                $hoangChainLast = json_decode($a[0]->blockchain);
                $hoangChain = new Blockchain(2);
                $hoangChain->chain = $hoangChainLast->chain;
                $hoangChain->difficulty = $hoangChainLast->difficulty;
                $valid = $hoangChain->isValid();
                if ($valid == false){
//                    dd("1");
                    $migrationFile = '2023_06_14_114601_drop_all_tables.php'; // Replace with your migration file name

                    try {
                        // Run the specific migration
                        Artisan::call('migrate', [
                            '--path' => 'database/migrations/' . $migrationFile,
                            '--force' => true, // Optional: Force the migration to run in production
                        ]);
                        $output = Artisan::output();
                        echo $output;

                        // Get the output of the migration command





                    } catch (\Exception $e) {
                        // Handle any exceptions that occur during the migration
//            echo "Migration failed: " . $e->getMessage();
                    }

                    $directoryPath = storage_path('app/backup');

                    $files = File::files($directoryPath);

                    if (!empty($files)) {
                        $latestFile = collect($files)->sortByDesc(function ($file) {
                            return $file->getMTime();
                        })->first();

                        $latestFilePath = $latestFile->getPathname();

                        echo $latestFilePath;
                    } else {
                        echo "No files found in the directory.";
                    }

                    $filePath = $latestFilePath;

                    // Get the SQL file content
                    $sql = file_get_contents($filePath);

                    // Run the SQL queries
                    DB::connection()->getPdo()->exec($sql);
                }
                if ($blockchaindb == md5($hoangChain->chain[(int)$number]->hash) && $number < sizeof($hoangChainLast->chain)){
                    $today = \Carbon\Carbon::now();
                    if($hoangChain->chain[(int)$number]->data->shelf_life < $today){
                        return  view('warning',[
                            "title"=>"Sản Phẩm Hết Hạn Sử Dụng!",
                            "content"=>"Sản phẩm này đã hết hạn sử dụng vào ngày ".$hoangChain->chain[(int)$number]->data->shelf_life.". \n Bạn vui lòng liên hệ nhân viên để được giúp đỡ!"
                        ]);
                    }
                    $id_product = $hoangChain->chain[(int)$number]->data->id_product;
                    $id_bill = $hoangChain->chain[(int)$number]->data->id_bill;

                    $billreceiveds = DB::select('select * from billreceiveds where id ='.$id_bill);
                    $salerooms = Salesroom::all();

                    $image = DB::select('select img_products.thumb1
                                                from img_products, products
                                                where img_products.product_id = products.id and products.id = '.$id_product);

                    $info_product = DB::select('select products.id as id_product, products.name as name_product, products.description as des_product, products.detail as detail_product, products.thumb , farmers.mavungtrong, farmers.thumb as thumb_farmer, seedsuppliers.madoanhnghiep, seedsuppliers.thumb as thumb_seedsupplier, seedsandseedlings.thumb as thumb_seedsandseedling, crops.thumb as thumb_crop,
                                                seedsandseedlings.description as description_seedsandseedling, seedsuppliers.madoanhnghiep as madoanhnghiep_seedsupplier, seedsuppliers.tencoso as tencoso_seedsupplier, seedsuppliers.mota as mota_seedsupplier, farmers.tencoso as tencoso_farmer, farmers.mota as mota_farmer, crops.detail as detail_crop, farmers.mavungtrong
                                              from  products, crops, farmers, seedsandseedlings, seedsuppliers
                                              where products.id_crop = crops.id and crops.id_farmer = farmers.id and crops.id_seedandseedling = seedsandseedlings.id
                                                    and seedsandseedlings.id_seedsupplier = seedsuppliers.id and products.id = '.$id_product);

                    return view('userView',[
                        'number'=>$number,
                        'images'=>$image,
                        'blockUser'=>$hoangChain->chain[(int)$number]->data,
                        'billreceiveds'=>$billreceiveds,
                        'salerooms'=>$salerooms
                    ]);
                }else{
                    return view('warning',[
                        'title'=>"Cánh Báo Mã QR Code Đã Bị Can Thiệp!",
                        'content'=>"Chúng tôi phát hiện mã QR code bạn vừa quét là giả hoặc đã bị can thiệp sửa đổi. Chúng tôi không có bất kỳ trách nhiệm nào đối với sản phẩm này. Nếu bạn muốn mua sản phẩm của chúng tôi vui lòng truy cập trang web nongsanvinhlongsv.click hoặc đến trực tiếp chuỗi cửa hàng của chúng tôi. Xin cảm ơn!",
                    ]);
                }
            }
        }catch (\Exception $e) {
            // Handle any exceptions that occur during the migration
//            dd("2");
            $migrationFile = '2023_06_14_114601_drop_all_tables.php'; // Replace with your migration file name

            try {
                // Run the specific migration
                Artisan::call('migrate', [
                    '--path' => 'database/migrations/' . $migrationFile,
                    '--force' => true, // Optional: Force the migration to run in production
                ]);
                $output = Artisan::output();
//                echo $output;

            } catch (\Exception $e) {
                // Handle any exceptions that occur during the migration
//            echo "Migration failed: " . $e->getMessage();
            }

            $directoryPath = storage_path('app/backup');

            $files = File::files($directoryPath);

            if (!empty($files)) {
                $latestFile = collect($files)->sortByDesc(function ($file) {
                    return $file->getMTime();
                })->first();

                $latestFilePath = $latestFile->getPathname();

//                echo $latestFilePath;
            } else {
//                echo "No files found in the directory.";
            }

            $filePath = $latestFilePath;

            // Get the SQL file content
            $sql = file_get_contents($filePath);

            // Run the SQL queries
            DB::connection()->getPdo()->exec($sql);
        }
    }

    public function checkBlock_ProductContent($id = '', $slug =''){
        $product = DB::select('select * from products where id ='.$id);
        $number = $product[0]->block_number;
        $blockchaindb = $product[0]->block;
        if (!is_numeric($number)){
//            dd("jii");
            return view('warning');
        }else{
            $a = DB::select('select * from blockchaindbs');
            $blockchain = $a[0]->blockchain;
            $blockchain = json_decode($blockchain);
            if (sizeof($a) < 0 || sizeof(($blockchain->chain)) <= (int)$number ){
                return view('warning',[
                    'title'=>"Cánh Báo Mã QR Code Đã Bị Can Thiệp!",
                    'content'=>"Chúng tôi phát hiện mã QR code bạn vừa quét là giả hoặc đã bị can thiệp sửa đổi. Chúng tôi không có bất kỳ trách nhiệm nào đối với sản phẩm này. Nếu bạn muốn mua sản phẩm của chúng tôi vui lòng truy cập trang web nongsanvinhlongsv.click hoặc đến trực tiếp chuỗi cửa hàng của chúng tôi. Xin cảm ơn!",
                ]);
            }
//            dd("hi");
            $hoangChainLast = json_decode($a[0]->blockchain);
            $hoangChain = new Blockchain(2);
            $hoangChain->chain = $hoangChainLast->chain;
            $hoangChain->difficulty = $hoangChainLast->difficulty;
            $valid = $hoangChain->isValid();
//
//            $c = $hoangChainLast->chain[(int)$number];
            if ($number < sizeof($hoangChainLast->chain) && json_encode($hoangChainLast->chain[(int)$number]->data)  == $blockchaindb && $valid == true ){
                $web3 = new Web3('http://127.0.0.1:7545');
                $contractABI = json_decode(file_get_contents(resource_path('contracts/abi.json')), true);
                $contractAddress = '0xC5E130387D3E2d7763e08A1e4389588da8082e46';
                $contract = new Contract($web3->provider, $contractABI);
                $contract->at($contractAddress);
//                dd("haha");


                $contract->call('countBill', function ($err, $result) use ($contract, $blockchaindb, $contractAddress, $number ) {
                    if ($err !== null) {
                        // Handle error
                        echo 'Error: ' . $err->getMessage();
                    }
                    else{
//                    echo 'Số khối: ' . $result;
                        $countBlock = json_decode(json_encode($result[0]->value));
                        GlobalVariable::$web3Result =  $countBlock;
//                            dd($countBlock);
                        //-----------------------------------------Add Block-------------------------------------
                        if ($countBlock > 0 && $number < $countBlock){


                            $contract->call('arrBlockChain', (int)$number , function ($err, $result) use ($blockchaindb, $number, $contractAddress) {
                                if ($err !== null) {
                                    // Handle error
                                    echo 'Error: ' . $err->getMessage();
                                }

                                GlobalVariable::$web3Result = $result;
                            });
                        }else{
                            GlobalVariable::$error_Web3 = 1;
                        }
                    }
                });

                if (GlobalVariable::$error_Web3 != 0){

                    return  view('warning',[
                        "title"=>"QR Code Đã Bị Can Thiệp!",
                        "content"=>"Chúng tôi phát hiện QR code của bạn đã bị can thiệp."
                    ]);
                }

                $block = json_decode($blockchaindb);
                if (GlobalVariable::$web3Result != 0){
                    $web3_mancc = GlobalVariable::$web3Result["_MaNCC"];
                    $web3_mavungtrong = GlobalVariable::$web3Result["_MaVungTrong"];
                    $web3_masp = GlobalVariable::$web3Result["_MASP"];
                    $web3_mahd = GlobalVariable::$web3Result["_MAHD"];
                    $web3_created_at = GlobalVariable::$web3Result["_created_at"];
                    $web3_shelf_life = GlobalVariable::$web3Result["_shelf_life"];
                    $today = \Carbon\Carbon::now();
                    if ($web3_mancc != $block->madoanhnghiep){

                        return  view('warning',[
                            "title"=>"QR Code Đã Bị Can Thiệp!",
                            "content"=>"Chúng tôi phát hiện QR code của bạn đã bị can thiệp."
                        ]);
                    }else{
                        if ($web3_shelf_life > $today){
                            return  view('warning',[
                                "title"=>"Sản Phẩm Hết Hạn Sử Dụng!",
                                "content"=>"Sản phẩm này đã hết hạn sử dụng vào ngày ".$web3_shelf_life.". \n Bạn vui lòng liên hệ nhân viên để được giúp đỡ!"
                            ]);
                        }else{
                            $id_product = $blockchaindb->id_product;
                            $id_bill = $blockchaindb->id_bill_received;

                            $billreceiveds = DB::select('select * from billreceiveds where id ='.$id_bill);
                            $salerooms = Salesroom::all();


                            $info_product = DB::select('select products.id as id_product, products.name as name_product, products.description as des_product, products.detail as detail_product, products.thumb , farmers.mavungtrong, seedsuppliers.madoanhnghiep
                                              from  products, crops, farmers, seedsandseedlings, seedsuppliers
                                              where products.id_crop = crops.id and crops.id_farmer = farmers.id and crops.id_seedandseedling = seedsandseedlings.id
                                                    and seedsandseedlings.id_seedsupplier = seedsuppliers.id and products.id = '.$id_product);


                            return view('userView',[
                                'number'=>$number,
                                'blockUser'=>$blockchaindb,
                                'info'=>$info_product[0],
                                'billreceiveds'=>$billreceiveds,
                                'salerooms'=>$salerooms
                            ]);
                        }

                        $id_product = $block->id_product;
                        $id_bill = $block->id_bill_received;

                        $billreceiveds = DB::select('select * from billreceiveds where id ='.$id_bill);
                        $salerooms = Salesroom::all();


                        $info_product = DB::select('select products.id as id_product, products.name as name_product, products.description as des_product, products.detail as detail_product, products.thumb , farmers.mavungtrong, seedsuppliers.madoanhnghiep
                                              from  products, crops, farmers, seedsandseedlings, seedsuppliers
                                              where products.id_crop = crops.id and crops.id_farmer = farmers.id and crops.id_seedandseedling = seedsandseedlings.id
                                                    and seedsandseedlings.id_seedsupplier = seedsuppliers.id and products.id = '.$id_product);


                        return view('userView',[
                            'number'=>$number,
                            'blockUser'=>$block,
                            'info'=>$info_product[0],
                            'billreceiveds'=>$billreceiveds,
                            'salerooms'=>$salerooms
                        ]);
                    }
                }
            } else{
                return view('warning',[
                    'title'=>"Cánh Báo Mã QR Code Đã Bị Can Thiệp!",
                    'content'=>"Chúng tôi phát hiện mã QR code bạn vừa quét là giả hoặc đã bị can thiệp sửa đổi. Chúng tôi không có bất kỳ trách nhiệm nào đối với sản phẩm này. Nếu bạn muốn mua sản phẩm của chúng tôi vui lòng truy cập trang web nongsanvinhlongsv.click hoặc đến trực tiếp chuỗi cửa hàng của chúng tôi. Xin cảm ơn!",
                ]);
            }
        }

//        dd($number."-------\n".json_decode($blockchaindb));
//        return view('userView',[
//            "title"=>"Trang Chủ",
//        ]);
    }

    public function productContent($id = '', $slug =''){

        $product = $this->productService->show($id);
        $productImg = $this->productService->showImg($id);
        $productsMore = $this->productService->more($product);
        $day = Carbon::now()->dayOfYear;
        return view('products.content',[
            'title' =>$product->name,
            'product' => $product,
            'products' => $productsMore,
            'productImg' => $productImg,
            'day' => $day
        ]);
    }

    public function loadProduct(Request $request)
    {
        $page = $request->input('page', 0);
        $result = $this->productService->getmain($page);
        if ( count($result) != 0) {
            $html = view('products.list', ['products' => $result ])->render();
            return response()->json([ 'html' => $html ]);
        }
        return response()->json(['html' => '' ]);
    }


    public function about(){
        return view('about',[
            'title' => 'Thông tin chúng tôi'
        ]);
    }

    public function contact(){
        return view('contact',[
            'title' => 'Liên hệ'
        ]);
    }

    public function sendMess(Request $request){
        Mail::send('mail.sendUsMess', ['customer' => $request], function ($m) use ($request) {
            $m->to('phuchuynh1453@gmail.com')->subject('Phản hồi từ khách hàng!');
        });
        return redirect()->back();
    }
}
