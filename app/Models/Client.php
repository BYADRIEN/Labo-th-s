<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Log; // Ajoutez cette ligne
use App\Notifications\ResetPasswordNotification;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\MustVerifyEmail;

class Client extends Authenticatable implements MustVerifyEmail
{
    use HasFactory, Notifiable, CanResetPassword;

    protected $table = 'client';

    protected $fillable = [
        'name',
        'prenom',
        'email',
        'password',
    ];

    public function posts()
    {
        return $this->hasMany(Post::class, 'client_id');
    }

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
}
