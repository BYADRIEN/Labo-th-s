<?php

namespace App\Notifications;

use Illuminate\Auth\Notifications\VerifyEmail as BaseVerifyEmail;
use Illuminate\Notifications\Messages\MailMessage;

class VerifyEmail extends BaseVerifyEmail
{
    /**
     * Build the mail message.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    protected function buildMailMessage($url)
    {
        return (new MailMessage)
            ->subject('Vérification de votre adresse email')
            ->line('Merci pour votre inscription. Veuillez cliquer sur le bouton ci-dessous pour vérifier votre email.')
            ->action('Vérifier mon adresse email', $url)
            ->line('Si vous n’avez pas créé de compte, aucune action n’est requise.');
    }
}
