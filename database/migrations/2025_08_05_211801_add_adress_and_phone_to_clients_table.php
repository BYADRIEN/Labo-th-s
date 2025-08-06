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
    Schema::table('client', function (Blueprint $table) {
        $table->string('adress')->nullable()->after('email'); // ou après une autre colonne
        $table->string('phone')->nullable()->after('adress');
    });
}

public function down()
{
    Schema::table('client', function (Blueprint $table) {
        $table->dropColumn(['adress', 'phone']);
    });
}
};
