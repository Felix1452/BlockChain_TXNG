<?php

namespace App\Http\Controllers;

use App\Http\Block\Block;
use App\Http\BlockChain\Blockchain;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use App\Models\Blockchaindb;
use App\Http\Services\BlockChainService;
use App\Models\Seedsupplier;
use App\Models\Farmer;
use App\Models\Salesroom;
use Web3\Web3;
use Web3\Contract;
use Web3\Utils;
use Web3\Providers\HttpProvider;
use Web3\Personal;



class testBlockChainController extends Controller
{
    public $blockchainService;
    public function __construct(BlockChainService $blockChainService)
    {
        $this->blockchainService = $blockChainService;

    }

    public function create(){
        $web3 = new Web3('http://127.0.0.1:7545');
        $contractABI = json_decode(file_get_contents(resource_path('contracts/abi.json')), true);
        $contractAddress = '0x15CD30fd2A16637223FF9b4231652170513802A8';
        $contract = new Contract($web3->provider, $contractABI);
        $contract->at($contractAddress);

        $web3->eth->accounts(function ($err, $accounts) use ($contract , $contractAddress) {
            if ($err !== null) {
                // Handle error
                echo 'Error: ' . $err->getMessage();
                return;
            }

            $fromAddress = $accounts[0];  // Use the first account for the transaction


//            $contract->call('DangKy', $nhacungcap, $nhavuon, $sieuthi  ,function ($err, $result) {
//                if ($err !== null) {
//                    // Handle error
//                    echo 'Error: ' . $err->getMessage();
//                }
//            });

            $contract->call('DangKy2', "aaaa", function ($err, $result) use ($fromAddress) {
                if ($err !== null) {
                    // Handle error
                    echo 'Error: ' . $err->getMessage();
                }
            });
            dd("success");
        });
    }

    public function store(Request $request){

    }

//    public function store2(Request $request){
//        $web3 = new Web3('http://127.0.0.1:7545');
//        $contractABI = json_decode(file_get_contents(resource_path('contracts/abi.json')), true);
//        $contractAddress = '0xd9145CCE52D386f254917e481eB44e9943F39138';
//        $contract = new Contract($web3->provider, $contractABI);
//        $contract->at($contractAddress);
//
//        $senderAddress = '0x50b9f1fa42f0e81Fd3d360ADBD57ec4D2BF936cB';
//        $senderPrivateKey = '0x6899a051e112b5fc676724268560f17c561bf6968734803d759acccfe35f37e8';
//
//
////        $transaction = [
////            'from' => $senderAddress,
////            'to' => $contractAddress,
////            'gas' => 2000000,
////            'gasPrice' => 1000000000, // Optional: Specify gas price in Wei
////        ];
//
//        $nhacungcap = $request->input('seedsupplier');
//        $nhavuon = $request->input('farmer');
//        $sieuthi = $request->input('saleroom');
//        $web3->eth->accounts(function ($err, $accounts) use ($contract, $nhacungcap, $nhavuon, $sieuthi , $contractAddress) {
//            if ($err !== null) {
//                // Handle error
//                echo 'Error: ' . $err->getMessage();
//                return;
//            }
//
////            $fromAddress = $accounts[0];  // Use the first account for the transaction
//
//            $contract->call('countHocvien' ,function ($err, $result) {
//                if ($err !== null) {
//                    // Handle error
//                    echo 'Error: ' . $err->getMessage();
//                }else{
////                    echo 'Số khối: ' . $result;
//                    $countBlock = json_decode(json_encode($result[0]->value));
//                }
//
//                //-----------------------------------------Add Block-------------------------------------
//                if ($countBlock != 0){
//                    $a = DB::select('select * from blockchaindbs');
//                    $hoangChainLast = json_decode($a[0]->blockchain);
//                    $hoangChain = new Blockchain(2);
//                    $hoangChain->chain = $hoangChainLast->chain;
//                    $hoangChain->difficulty = $hoangChainLast->difficulty;
//
//                    $hoangChain->addBlock(['Nhacungcapgiong'=> ,
//                        'Nhavuon'=> $request->input('description'),
//                        'Saleroom'=>$request->input('name')]);
//                    $valid = $hoangChain->isValid();
//
////            dd($hoangChain);
//                    $result = $this->blockchainService->update($a[0]->id, json_encode($hoangChain));
////            dd($result);
//                    $a = DB::select('select * from blockchaindbs');
//                    $hoangChainLast = json_decode($a[0]->blockchain);
//                    $hoangChain = new Blockchain(2);
//                    $hoangChain->chain = $hoangChainLast->chain;
//                    $hoangChain->difficulty = $hoangChainLast->difficulty;
//                    // Generate QR code
//                    $blockString = json_encode($hoangChain->getLastBlock()->data);
////            dd($blockString);
//                    $qrCodePath = public_path('public/qrcode/qrcode' . (count($hoangChain->chain) - 1) . '.png');
//
////        QrCode::format('png')->size(400)->generate("https://huyphucshop.site/" . (count($hoangChain->chain) - 1) . "/" . $blockString, $qrCodePath);
//
////        $genesisBlock = new Block('0', [$request->input('name'), $request->input('description'), $request->input('content')]);
////        $genesisBlock->mine(2);
//
//
////        return QrCode::size(300)->backgroundColor(255,90,0)->generate("https://huyphucshop.site/" . (count($hoangChain->chain) - 1) . "/" . $blockString);
//                    // Display the blocks
//
//                    $image = \QrCode::format('png')->merge('ss.png', 0.3, true)->size(200)->generate("https://vpshop.tk/checkBlock/".(count($hoangChain->chain) - 1) . "/" . $blockString);
//                    $output_file = '/img/qr-code/img-' . (count($hoangChain->chain)-1) . '.png';
//                    Storage::disk('public')->put($output_file, $image);
//
//
//
////            return response()->json([
////                'BlockChain'=>$hoangChain,
////                'isValid'=>$valid,
////                'Count'=>count($hoangChain->chain)
////            ]);
//
//                    Session::flash('success', 'Thêm thành công !');
//
////            return view('admin.addInfomation', [
////                'title'=>"Xin chào",
////                'users' => 5
////            ]);
//                    return response()->json(['error'=>true]);
//                }
//                else{
//                    $hoangChain = new Blockchain(2);
//                    $hoangChain->addBlock(['Email'=> $request->input('name'),
//                        'Description'=> $request->input('description'),
//                        'Content'=>$request->input('name')]);
//
//                    $valid = $hoangChain->isValid();
//
//                    // Generate QR code
//                    $blockString = json_encode($hoangChain->getLastBlock()->data);
//                    $qrCodePath = public_path('public/qrcode/qrcode' . (count($hoangChain->chain) - 1) . '.png');
//
//                    $this->blockchainService->create(json_encode($hoangChain));
////        QrCode::format('png')->size(400)->generate("https://huyphucshop.site/" . (count($hoangChain->chain) - 1) . "/" . $blockString, $qrCodePath);
//
////        $genesisBlock = new Block('0', [$request->input('name'), $request->input('description'), $request->input('content')]);
////        $genesisBlock->mine(2);
//
//
////        return QrCode::size(300)->backgroundColor(255,90,0)->generate("https://huyphucshop.site/" . (count($hoangChain->chain) - 1) . "/" . $blockString);
//                    // Display the blocks
//
//                    $image = \QrCode::format('png')->size(200)->generate("https://vpshop.tk/".(count($hoangChain->chain) - 1) . "/" . $blockString);
//                    $output_file = '/img/qr-code/img-' . (count($hoangChain->chain)-1) . '.png';
//                    Storage::disk('public')->put($output_file, $image);
//                    Session::flash('success', 'Thêm thành công !');
//
//
//                    return response()->json(['error'=>true]);
//                }
//
//
//
//
//
//
//            });
//
//
////            $contract->call('DangKy', $nhacungcap, $nhavuon, $sieuthi  ,function ($err, $result) {
////                if ($err !== null) {
////                    // Handle error
////                    echo 'Error: ' . $err->getMessage();
////                }
////            });
//
////            $contract->send('DangKy', $nhavuon, [
////                'from' => $fromAddress,
////                'to' => $contractAddress,
////                'gas' => 2000000,
////                'gasPrice' => 1000000000, // Optional: Specify gas price in Wei
////            ], function ($err, $result) {
////                if ($err !== null) {
////                    // Handle error
////                    echo 'Error: ' . $err->getMessage();
////                }
////            });
//        });
//    }
}
