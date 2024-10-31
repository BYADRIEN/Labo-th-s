<?php

return [

'defaults' => [
'guard' => 'client',  // Changer 'web' en 'client' si tu veux l'utiliser par défaut
'passwords' => 'clients',  // Mettre à jour le reset password avec le provider 'clients'
],

'guards' => [
'client' => [  // Remplace 'web' par 'client'
'driver' => 'session',
'provider' => 'clients',  // Utilise le provider 'clients' que tu définiras plus bas
],
],

'providers' => [
'clients' => [
'driver' => 'eloquent',
'model' => App\Models\Client::class,
],
],

    'passwords' => [
        'clients' => [
            'provider' => 'clients',
            'table' => 'password_resets',
            'expire' => 60,
            'throttle' => 60,
            'notify' => App\Notifications\ResetPasswordNotification::class, // Assurez-vous que cela pointe vers votre classe
        ],

],

'password_timeout' => 10800,

];
