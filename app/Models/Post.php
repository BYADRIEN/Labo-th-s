<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use RyanChandler\Comments\Concerns\HasComments;

class Post extends Model
{
    use HasFactory;
    use HasComments;
    protected $table = 'posts'; // Remplacez 'nouveau_nom_de_table' par le nouveau nom de votre table
    protected $fillable = ['title', 'slug', 'content'];

}
