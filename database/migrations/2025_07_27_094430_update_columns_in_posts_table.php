<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
   public function up(): void
{
    Schema::table('posts', function (Blueprint $table) {
        $table->decimal('price', 8, 2)->change();
        $table->integer('stock')->change();
        $table->decimal('poids', 8, 2)->change();
        $table->decimal('montant_tva', 5, 2)->change();
        $table->unsignedBigInteger('category_id')->change();
    });
}

public function down(): void
{
    Schema::table('posts', function (Blueprint $table) {
        $table->text('price')->change();
        $table->text('stock')->change();
        $table->text('poids')->change();
        $table->text('montant_tva')->change();
        $table->text('category_id')->change();
    });
}
};
