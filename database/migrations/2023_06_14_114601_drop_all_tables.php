<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropAllTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Disable foreign key checks
        // Create the migrations table

        DB::statement('SET FOREIGN_KEY_CHECKS = 0');

        // Get all table names
        $tables = DB::select('SHOW TABLES');
        $tables = array_column($tables, 'Tables_in_' . env('DB_DATABASE'));


        // Drop each table
        foreach ($tables as $table) {
            Schema::dropIfExists($table);
        }

        // Enable foreign key checks
        DB::statement('SET FOREIGN_KEY_CHECKS = 1');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // No action needed for rollback
    }
}
