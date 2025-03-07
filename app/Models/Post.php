<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use RyanChandler\Comments\Concerns\HasComments;
use App\Models\Category;

class Post extends Model
{
    use HasFactory;
    use HasComments;
    protected $table = 'posts'; // Remplacez 'nouveau_nom_de_table' par le nouveau nom de votre table
    protected $fillable = ['title', 'slug', 'content','category_id'];
    // Relation avec les commentaires
    public function client()
    {
        return $this->belongsTo(Client::class, 'client_id'); // Assurez-vous que 'client_id' est la clé étrangère dans la table 'posts'
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function path()
    {
        return url('posts/' . $this->id);
    }
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    public function likes()
    {
        return $this->belongsToMany(Client::class, 'post_likes')->withTimestamps();
    }
}
