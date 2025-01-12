<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('comments', function (Blueprint $table) {
            $table->unsignedBigInteger('post_id')->nullable(); // Ajoute la colonne
            $table->foreign('post_id')->references('id')->on('posts')->onDelete('cascade'); // Ajoute la clé étrangère
        });
    }

    public function down()
    {
        Schema::table('comments', function (Blueprint $table) {
            $table->dropForeign(['post_id']); // Supprime la clé étrangère
            $table->dropColumn('post_id'); // Supprime la colonne
        });
    }
};
