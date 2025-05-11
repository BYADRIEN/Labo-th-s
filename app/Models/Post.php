<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use RyanChandler\Comments\Concerns\HasComments;
use App\Models\Category;
use Dive\Wishlist\Contracts\Wishable; // À supprimer si non nécessaire
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Post extends Model
{
    use HasFactory, HasComments;

    protected $table = 'posts';
    protected $fillable = ['title', 'slug', 'content', 'category_id', 'stock', 'price', 'img', 'poids', 'montant_tva'];

    public function client()
    {
        return $this->belongsTo(Client::class, 'client_id');
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

    // Relation many-to-many avec les clients via la table pivot "wishlists"
    public function clients()
    {
        return $this->belongsToMany(Client::class, 'wishes', 'post_id', 'client_id');
    }
}
