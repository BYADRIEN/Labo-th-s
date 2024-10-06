<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Laravel\Fortify\Fortify;

class AddTwoFactorColumnsToUsersTable extends Migration
{
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->text('two_factor_secret')->nullable()->after('password');
            $table->text('two_factor_recovery_codes')->nullable()->after('two_factor_secret');

            // Commenter cette ligne si vous n'utilisez pas Fortify
            // if (Fortify::confirmsTwoFactorAuthentication()) {
            //     $table->timestamp('two_factor_confirmed_at')->nullable()->after('two_factor_recovery_codes');
            // }
        });
    }

    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('two_factor_secret');
            $table->dropColumn('two_factor_recovery_codes');
            // $table->dropColumn('two_factor_confirmed_at'); // Commenter cette ligne si elle a été ajoutée
        });
    }
}
