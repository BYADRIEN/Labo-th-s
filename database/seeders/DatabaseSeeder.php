<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User; // Modèle User
use App\Models\Permission; // Modèle Permission
use App\Models\Role; // Modèle Role
// Ajoute d'autres modèles si nécessaire

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Insérer des utilisateurs
        User::insert([
            ['name' => 'User1', 'email' => 'user1@example.com', 'password' => bcrypt('password')],
            ['name' => 'User2', 'email' => 'user2@example.com', 'password' => bcrypt('password')],
            // Ajoute d'autres utilisateurs ici
        ]);

        // Insérer des permissions
        Permission::insert([
            ['name' => 'view-posts', 'guard_name' => 'web'],
            ['name' => 'edit-posts', 'guard_name' => 'web'],
            // Ajoute d'autres permissions ici
        ]);

        // Insérer des rôles
        Role::insert([
            ['name' => 'admin', 'guard_name' => 'web'],
            ['name' => 'editor', 'guard_name' => 'web'],
            // Ajoute d'autres rôles ici
        ]);

        // Appelle d'autres seeders si tu en as
        // $this->call(OtherSeeder::class);
    }
}
