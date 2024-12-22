<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddEmailVerifiedAtToClientTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('client', function (Blueprint $table) {
            if (!Schema::hasColumn('client', 'email_verified_at')) {
                $table->timestamp('email_verified_at')->nullable();
            }
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('client', function (Blueprint $table) {
            if (Schema::hasColumn('client', 'email_verified_at')) {
                $table->dropColumn('email_verified_at');
            }
        });
    }
}
