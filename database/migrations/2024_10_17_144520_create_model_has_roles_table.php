<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateModelHasRolesTable extends Migration
{
    public function up()
    {
        // Vérification de la configuration avant de créer les colonnes
        if (!config('permission.column_names.role_pivot_key') || !config('permission.column_names.permission_pivot_key')) {
            throw new \Exception("Les clés 'role_pivot_key' et 'permission_pivot_key' doivent être définies dans 'config/permission.php'.");
        }
        Schema::create('model_has_roles', function (Blueprint $table) {
            $table->unsignedBigInteger('role_id');
            $table->string('model_type');
            $table->unsignedBigInteger('model_id');

            $table->foreign('role_id')
                ->references('id')->on('roles')
                ->onDelete('cascade');

            $table->primary(['role_id', 'model_id', 'model_type']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('model_has_roles');
    }
}
