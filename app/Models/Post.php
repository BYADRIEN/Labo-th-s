<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str; // Pour la génération du slug
use RyanChandler\Comments\Concerns\HasComments;

class Post extends Model
{
    use HasFactory, HasComments;

    protected $table = 'posts';

    protected $fillable = [
        'title',
        'slug',
        'content',
        'category_id',
        'stock',
        'price',
        'img',
        'poids',
        'montant_tva'
    ];

    // Génération automatique du slug à partir du titre
    protected static function booted()
    {
        static::saving(function ($post) {
            $post->slug = Str::slug($post->title);
        });
    }

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

    public function clients()
    {
        return $this->belongsToMany(Client::class, 'wishes', 'post_id', 'client_id');
    }
}
