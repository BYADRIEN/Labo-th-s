<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
// migration file: create_wishables_table.php
    public function up()
    {
        Schema::create('wishables', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('post_id');
            $table->unsignedBigInteger('wishable_id');
            $table->string('wishable_type');
            $table->timestamps();

            // Ajouter des clés étrangères si nécessaire
            $table->foreign('post_id')->references('id')->on('posts')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('wishables');
    }
};
