<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRolesTable extends Migration
{
    public function up()
    {
        // Vérifier si la table 'roles' existe déjà avant de la créer
        if (!Schema::hasTable('roles')) {
            Schema::create('roles', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255); // Limité à 255 caractères
                $table->string('guard_name', 255); // Limité à 255 caractères
                $table->timestamps();

                // Ajout de la clé unique
                $table->unique(['name', 'guard_name'], 'roles_name_guard_name_unique');
            });
        }
    }
}
