<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Permission; // Assure-toi d'importer le bon modèle

class PermissionSeeder extends Seeder
{
    public function run()
    {
        Permission::insert([
            ['name' => 'view-posts', 'guard_name' => 'web'],
            ['name' => 'edit-posts', 'guard_name' => 'web'],
            ['name' => 'delete-posts', 'guard_name' => 'web'],
            ['name' => 'create-posts', 'guard_name' => 'web'],
            // Ajoute d'autres permissions ici si nécessaire
        ]);
    }
}
