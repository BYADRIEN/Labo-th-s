<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    use HasFactory;

    protected $table = 'permissions'; // Si nécessaire, sinon Laravel le devine
    protected $fillable = ['name', 'guard_name']; // Colonnes modifiables
}
