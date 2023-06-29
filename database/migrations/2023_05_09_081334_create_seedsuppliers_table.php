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
        Schema::create('seedsuppliers', function (Blueprint $table) {
            $table->id();
            $table->string('tencoso');
            $table->string('chucoso');
            $table->string('nguoidaidienphaply');
            $table->string('diachi');
            $table->string('sodienthoai');
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
        Schema::dropIfExists('seedsuppliers');
    }
};
