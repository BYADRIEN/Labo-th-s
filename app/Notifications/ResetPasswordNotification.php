<?php
namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ResetPasswordNotification extends Notification
{
use Queueable;

protected $token; // Ajoute une propriété pour le token

/**
* Create a new notification instance.
*/
public function __construct($token) // Accepte le token dans le constructeur
{
$this->token = $token; // Stocke le token
}

/**
* Get the notification's delivery channels.
*
* @return array<int, string>
*/
public function via(object $notifiable): array
{
return ['mail'];
}

/**
* Get the mail representation of the notification.
*/
    public function toMail(object $notifiable): MailMessage
    {
        dump($this->token); // Vérifie si le token est bien reçu
        dump($notifiable); // Vérifie si l'objet notifiable est correct

        return (new MailMessage)
            ->line('You are receiving this email because we received a password reset request for your account.')
            ->action('Reset Password', url('/password/reset', $this->token))
            ->line('If you did not request a password reset, no further action is required.')
            ->line('Thank you for using our application!');
    }

/**
* Get the array representation of the notification.
*
* @return array<string, mixed>
*/
public function toArray(object $notifiable): array
{
return [
//
];
}
}