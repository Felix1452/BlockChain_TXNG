<?php

namespace App\Console\Commands;

use App\Helpers\GlobalVariable;
use App\Http\BlockChain\Blockchain;
use App\Http\Services\Accuracy\AccuracyService;
use App\Models\Autofunc;
use App\Models\Timecheck;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Schema;
use Web3\Contract;
use Web3\Web3;

class ProcessData extends Command
{
//    protected $accuracyService;
//
//    public function __construct(AccuracyService $accuracyService)
//    {
//        $this->accuracyService = $accuracyService;
//    }




    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'process:dataLaravel';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Process data every ten minutes';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        GlobalVariable::$accuracyBill = 0;
        GlobalVariable::$accuracySalesroom = 0;


        $web3 = new Web3('http://127.0.0.1:7545');
//            dd($web3->provider);
        $contractABI = json_decode(file_get_contents(resource_path('contracts/abi.json')), true);
        $contractAddress = '0xC5E130387D3E2d7763e08A1e4389588da8082e46';
        $contract = new Contract($web3->provider, $contractABI);
        $contract->at($contractAddress);
        if (Schema::hasTable("blockchaindbs") == false){
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

            $timeDB = Timecheck::all();
            Timecheck::where('id',$timeDB[0]->id)->update(array(
                'time'=>time()
            ));
            #========================================================Backup====================================#
        }

        $a = DB::select('select * from blockchaindbs');
        if (sizeof($a) == 0){
            #========================================================Backup====================================#
            $contract->call('countBill', function ($err, $result) use ($contract, $contractAddress) {
                if ($err !== null) {
                    // Handle error
                    echo 'Error: ' . $err->getMessage();
                } else {
                    GlobalVariable::$countBill = $result;
                }
            });

            if (GlobalVariable::$countBill != 0){
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

                $timeDB = Timecheck::all();
                Timecheck::where('id',$timeDB[0]->id)->update(array(
                    'time'=>time()
                ));
                #========================================================Backup====================================#
            }
        } else{
            try {
                $hoangChainLast = json_decode($a[0]->blockchain);
                $hoangChain = new Blockchain(2);
                $hoangChain->chain = $hoangChainLast->chain;
                $hoangChain->difficulty = $hoangChainLast->difficulty;

                $valid = $hoangChain->isValid();
            }catch (\Exception $e) {
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

                $timeDB = Timecheck::all();
                Timecheck::where('id',$timeDB[0]->id)->update(array(
                    'time'=>time()
                ));
                return;
                #========================================================Backup====================================#
            }


            $web3 = new Web3('http://127.0.0.1:7545');
//            dd($web3->provider);
            $contractABI = json_decode(file_get_contents(resource_path('contracts/abi.json')), true);
            $contractAddress = '0xC5E130387D3E2d7763e08A1e4389588da8082e46';
            $contract = new Contract($web3->provider, $contractABI);
            $contract->at($contractAddress);
            //----------------------------------Xác thực bill------------------------

            if($valid){
                for ($i = (sizeof($hoangChain->chain) - 1); $i > 1 ; $i--) {
//            dd(md5($hoangChain->chain[2]->hash));
                    $web3->eth->accounts(function ($err, $accounts) use ($contract, $hoangChain, $i, $contractAddress) {
                        if ($err !== null) {
                            // Handle error
                            echo 'Error: ' . $err->getMessage();
                            return;
                        }
                        $senderAddress = '0x50b9f1fa42f0e81Fd3d360ADBD57ec4D2BF936cB';
                        $senderPrivateKey = '0x6899a051e112b5fc676724268560f17c561bf6968734803d759acccfe35f37e8';


                        $contract->call('countBill', function ($err, $result) use ($contract, $hoangChain, $i, $contractAddress) {
                            if ($err !== null) {
                                // Handle error
                                echo 'Error: ' . $err->getMessage();
                            } else {
                                //                    echo 'Số khối: ' . $result;
                                $countBlock = json_decode(json_encode($result[0]->value));
                                if ($countBlock != sizeof($hoangChain->chain)) {
                                    GlobalVariable::$accuracyBill++;
                                }
                                //-----------------------------------------Check Block-------------------------------------
                                if (GlobalVariable::$accuracyBill == 0) {
                                    //                            dd(1);
                                    $contract->call('arrBlockChain', (int)($i), function ($err, $result) use ($hoangChain, $i) {
                                        if ($err !== null) {
                                            // Handle error
                                            echo 'Error: ' . $err->getMessage();
                                            GlobalVariable::$errorCallBill = 1;
                                        }

                                        if (md5($hoangChain->chain[$i]->hash.$result["_minevar"]) != $result["_hash"]) {
                                            GlobalVariable::$accuracyBill++;
//                                            dd("0");
                                        }
                                    });
                                }

                            }
                        });
                    });

                }
                if (GlobalVariable::$accuracyBill == 0){
                    $sale = DB::select('select * from salesroomchains');
                    $saleChainLast = json_decode($sale[0]->blockchain_salesroom);
                    $saleroomChain = new Blockchain(2);
                    $saleroomChain->chain = $saleChainLast->chain;
                    $saleroomChain->difficulty = $saleChainLast->difficulty;

                    $validSale = $saleroomChain->isValid();
                    if ($validSale){
                        for ($j = (sizeof($saleroomChain->chain) - 1); $j > 1 ; $j--) {
                            $web3->eth->accounts(function ($err, $accounts) use ($contract, $saleroomChain, $j, $contractAddress) {
                                if ($err !== null) {
                                    // Handle error
                                    echo 'Error: ' . $err->getMessage();
                                    return;
                                }
                                $senderAddress = '0x50b9f1fa42f0e81Fd3d360ADBD57ec4D2BF936cB';
                                $senderPrivateKey = '0x6899a051e112b5fc676724268560f17c561bf6968734803d759acccfe35f37e8';


                                $contract->call('countSaleroom', function ($err, $result) use ($contract, $saleroomChain, $j, $contractAddress) {
                                    if ($err !== null) {
                                        // Handle error
                                        echo 'Error: ' . $err->getMessage();
                                    } else {
                                        //                    echo 'Số khối: ' . $result;
                                        $countBlockSale = json_decode(json_encode($result[0]->value));
                                        if ($countBlockSale != sizeof($saleroomChain->chain)) {
                                            GlobalVariable::$accuracySalesroom++;
                                        }
                                        //-----------------------------------------Check Block-------------------------------------
                                        if (GlobalVariable::$accuracyBill == 0) {
                                            //                            dd(1);
                                            $contract->call('arrSaleroom', (int)($j), function ($err, $result) use ($saleroomChain, $j) {
                                                if ($err !== null) {
                                                    // Handle error
                                                    echo 'Error: ' . $err->getMessage();
                                                    GlobalVariable::$errorCallSale = 1;
                                                }

                                                if (md5($saleroomChain->chain[$j]->hash.$result["_minevar"]) != $result["_hash"]) {
                                                    GlobalVariable::$accuracySalesroom++;
                                                }
                                            });
                                        }

                                    }
                                });
                            });
                        }

                        if (GlobalVariable::$accuracySalesroom == 0){
                            $timeDB = Timecheck::all();
                            Timecheck::where('id',$timeDB[0]->id)->update(array(
                                'time'=>time()
                            ));
                        }else{
                            #========================================================Backup====================================#
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

                            $timeDB = Timecheck::all();
                            Timecheck::where('id',$timeDB[0]->id)->update(array(
                                'time'=>time()
                            ));
                            #========================================================Backup====================================#
                        }


                    }else{
                        #========================================================Backup====================================#
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

                        $timeDB = Timecheck::all();
                        Timecheck::where('id',$timeDB[0]->id)->update(array(
                            'time'=>time()
                        ));
                        #========================================================Backup====================================#
                    }
                }else{
                    #========================================================Backup====================================#
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

                    $timeDB = Timecheck::all();
                    Timecheck::where('id',$timeDB[0]->id)->update(array(
                        'time'=>time()
                    ));
                    #========================================================Backup====================================#
                }
            }else{
                #========================================================Backup====================================#
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
    //              echo "Migration failed: " . $e->getMessage();
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

                $timeDB = Timecheck::all();
                Timecheck::where('id',$timeDB[0]->id)->update(array(
                    'time'=>time()
                ));
                #========================================================Backup====================================#
            }
        }

    }
}
