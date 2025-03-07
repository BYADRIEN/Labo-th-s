<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration {
    public function up(): void
    {
        $teams = config('permission.teams');
        $tableNames = config('permission.table_names');
        $columnNames = config('permission.column_names');
        $pivotRole = $columnNames['role_pivot_key'] ?? 'role_id';
        $pivotPermission = $columnNames['permission_pivot_key'] ?? 'permission_id';

        if (empty($tableNames)) {
            throw new \Exception('Error: config/permission.php not loaded. Run [php artisan config:clear] and try again.');
        }
        if ($teams && empty($columnNames['team_foreign_key'] ?? null)) {
            throw new \Exception('Error: team_foreign_key on config/permission.php not loaded. Run [php artisan config:clear] and try again.');
        }

        // Vérification avant de créer les tables
        if (!Schema::hasTable($tableNames['permissions'])) {
            Schema::create($tableNames['permissions'], function (Blueprint $table) {
                $table->bigIncrements('id'); // permission id
                $table->string('name', 50); // Réduit à 50 caractères
                $table->string('guard_name', 50); // Réduit à 50 caractères
                $table->timestamps();

                $table->unique(['name', 'guard_name'], 'permissions_name_guard_name_unique'); // Pas de longueur spécifiée
            });
        }

        if (!Schema::hasTable($tableNames['roles'])) {
            Schema::create($tableNames['roles'], function (Blueprint $table) use ($teams, $columnNames) {
                $table->bigIncrements('id');
                if ($teams || config('permission.testing')) {
                    $table->unsignedBigInteger($columnNames['team_foreign_key'])->nullable();
                    $table->index($columnNames['team_foreign_key'], 'roles_team_foreign_key_index');
                }
                $table->string('name', 50); // Réduit à 50 caractères
                $table->string('guard_name', 50); // Réduit à 50 caractères
                $table->timestamps();
                if ($teams || config('permission.testing')) {
                    $table->unique([$columnNames['team_foreign_key'], 'name', 'guard_name']);
                } else {
                    $table->unique(['name', 'guard_name']);
                }
            });
        }
        if (!Schema::hasTable($tableNames['role_has_permissions'])) {
            Schema::create($tableNames['role_has_permissions'], function (Blueprint $table) use ($pivotRole, $pivotPermission) {
                $table->unsignedBigInteger($pivotPermission);
                $table->unsignedBigInteger($pivotRole);

                $table->foreign($pivotPermission)->references('id')->on('permissions')->onDelete('cascade');
                $table->foreign($pivotRole)->references('id')->on('roles')->onDelete('cascade');

                $table->primary([$pivotPermission, $pivotRole]);
            });
        }
        // (Le reste de la migration reste inchangé)

    }

    public function down(): void
    {
        $tableNames = config('permission.table_names');

        if (empty($tableNames)) {
            throw new \Exception('Error: config/permission.php not found and defaults could not be merged. Please publish the package configuration before proceeding, or drop the tables manually.');
        }

        Schema::dropIfExists($tableNames['role_has_permissions']);
        Schema::dropIfExists($tableNames['model_has_roles']);
        Schema::dropIfExists($tableNames['model_has_permissions']);
        Schema::dropIfExists($tableNames['roles']);
        Schema::dropIfExists($tableNames['permissions']);
    }
};
