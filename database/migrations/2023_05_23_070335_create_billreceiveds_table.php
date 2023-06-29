<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('billreceiveds', function (Blueprint $table) {
            $table->id();
            $table->string('quantity');
            $table->double('price');
            $table->double('total_price');
            $table->bigInteger('id_product');
            $table->string('list_saleroom');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('billreceiveds');
    }
};
