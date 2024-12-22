<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Post;

class Articles extends Model
{
    protected $table = 'blog_articles'; // Nom de la table concernée par cette classe
    public $timestamps = false; // Désactive la gestion des colonnes created_at et updated_at
}
