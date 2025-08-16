<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Log;
use App\Notifications\ResetPasswordNotification;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Spatie\Permission\Traits\HasRoles;


class Client extends Authenticatable implements MustVerifyEmail
{
    use HasFactory, Notifiable, CanResetPassword, TwoFactorAuthenticatable;
    use HasRoles;


    protected $table = 'client';

    protected $fillable = [
        'name',
        'prenom',
        'email',
        'password',
        'adress',
        'phone',
        'status'
    ];

    //public function posts()
    //{
    //    return $this->hasMany(Post::class, 'client_id');
    //}

    public function sendPasswordResetNotification($token)
    {
        try {
            if ($token) {
                dump($token); // Vérifiez que le token est non nul
                Log::info('Token de réinitialisation généré : ' . $token); // Ajoutez ce log
                $this->notify(new ResetPasswordNotification($token));
                Log::info('Notification envoyée avec succès pour : ' . $this->email);
            } else {
                Log::error('Token de réinitialisation de mot de passe nul pour le client : ' . $this->email);
            }
        } catch (\Exception $e) {
            Log::error('Erreur lors de l\'envoi de la notification de réinitialisation de mot de passe : ' . $e->getMessage());
        }
    }

    public function getEmailForPasswordReset()
    {
        return $this->email;
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function likes()
    {
        return $this->belongsToMany(Post::class, 'post_likes')->withTimestamps();
    }

    public function hasLiked(Post $post)
    {
        return $this->likes()->where('post_id', $post->id)->exists();
    }

    // App\Models\Client.php
    //public function whishes()
    //{
    //    return $this->morphToMany(Post::class, 'wishable');
   // }
    //public function whishes()
    //{
    //    return $this->morphMany(Wishlist::class, 'wishable');
    //}
    public function posts()
    {
        return $this->belongsToMany(Post::class, 'wishes') // 'wishes' est la table pivot
        ->withPivot('uuid', 'user_id', 'wishable_type', 'wishable_id', 'scope');
    }
    public function commandes()
    {
        return $this->hasMany(\App\Models\Order::class, 'client_id'); // ou 'user_id' si la colonne est différente
    }
}