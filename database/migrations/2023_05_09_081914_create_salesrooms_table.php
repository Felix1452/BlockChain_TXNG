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
        Schema::create('salerooms', function (Blueprint $table) {
            $table->id();
            $table->string('madoanhngiep');
            $table->string('tencoso');
            $table->string('tengnuoidaidien');
            $table->string('tenchucoso');
            $table->string('sodienthoai');
            $table->string('diachi');
            $table->string('mota');
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
        Schema::dropIfExists('salerooms');
    }
};
