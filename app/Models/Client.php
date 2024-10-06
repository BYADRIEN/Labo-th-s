<?php

namespace App\Models;

use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable as AuthenticatableTrait;
use Spatie\Permission\Traits\HasRoles;

class Client extends Model implements Authenticatable
{
    use HasFactory, AuthenticatableTrait;
    use HasRoles;

    protected $table = 'client'; // Assurez-vous que le nom de votre table est correct ici

    protected $fillable = [
        'name',
        'prenom',
        'email',
        'password',
    ];
}
