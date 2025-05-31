<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User; // Modèle User
use App\Models\Permission; // Modèle Permission
use App\Models\Role; // Modèle Role

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::insert([
        //     ['name' => 'User1', 'email' => 'user1@example.com', 'password' => bcrypt('password')],
        //     ['name' => 'User2', 'email' => 'user2@example.com', 'password' => bcrypt('password')],
        // ]);

        // Permission::insert([
        //     ['name' => 'view-posts', 'guard_name' => 'web'],
        //     ['name' => 'edit-posts', 'guard_name' => 'web'],
        // ]);

        // Role::insert([
        //     ['name' => 'admin', 'guard_name' => 'web'],
        //     ['name' => 'editor', 'guard_name' => 'web'],
        // ]);

        $this->call(RoleSeeder::class);
        $this->call(AdminSeeder::class);

    }
}
