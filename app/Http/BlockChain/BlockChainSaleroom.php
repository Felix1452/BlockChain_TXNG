<?php

namespace App\Http\BlockChain;

use App\Http\Block\Block;
use App\Models\Blockchaindb;
use App\Models\Salesroomchain;
use Illuminate\Support\Facades\Hash;

class BlockChainSaleroom
{
    public $difficulty;
    public $chain;

    public function __construct($difficulty) {
        if (sizeof(Salesroomchain::all()) == 0){
            $hash = hash('sha256', "isgenesis");
            $preHash0 = Hash::make($hash);
            $genesisBlock = new Block($preHash0,['isgenesis' => true]);
            $this->difficulty = $difficulty;
            $this->chain[] = $genesisBlock;


//            dd(Hash::check($hash,$preHash0));
//            dd($genesisBlock);
//            Salesroomchain::create([
//                'blockchain_salesroom'=>json_encode($genesisBlock)
//            ]);

//            $lastCh = $this->getLastBlock();
//            dd(Hash::check("91fec8c36cea9be1371a49d6950692305663e8ca8a66ebc4fc4415d4255c49f4",$preHash0));
//            dd($this->getLastBlock());
//            dd(0);
        }
    }

    public function getLastBlock() {
        return end($this->chain);
    }

    public function addBlock($data) {
        $lastBlock = $this->getLastBlock();
        $newBlock = new Block($lastBlock->hash, $data);
        $start = microtime(true);
        $newBlock->mine($this->difficulty);
        $end = microtime(true) - $start;

        $this->chain[] = $newBlock;
        // web3.eth.getBlockNumber().then(console.log);
    }

    public function isValid() {
        for ($i = 1; $i < count($this->chain); $i++) {
            $currentBlock = new Block($this->chain[$i]->prevHash, $this->chain[$i]->data);
            $currentBlock->prevHash = $this->chain[$i]->prevHash;
            $currentBlock->data =$this->chain[$i]->data;
            $currentBlock->timeStamp =$this->chain[$i]->timeStamp;
            $currentBlock->hash =$this->chain[$i]->hash;
            $currentBlock->mineVar =$this->chain[$i]->mineVar;
            $currentBlock->target =$this->chain[$i]->target;
            $currentBlock->subHash =$this->chain[$i]->subHash;
            $currentBlock->mineTime =$this->chain[$i]->mineTime;
//            dd($currentBlock);

            $prevBlock = $this->chain[$i - 1];
            $stringBlock = $currentBlock->prevHash.json_encode($currentBlock->data).$currentBlock->mineVar.$currentBlock->timeStamp;

            $hash1 = hash('sha256',$stringBlock);
//            dd($currentBlock->hash);
//            dd($currentBlock->hash);
            if (!(Hash::check($hash1, $currentBlock->hash))) {
                return false;
            }
//            dd("2");

            if ($currentBlock->prevHash != $prevBlock->hash) {
                return false;
            }
        }
        return true;
    }
}
