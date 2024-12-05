<?php

namespace App\Listeners;

use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Log;
use App\Events\ClientRegistered;

class SendEmailVerificationNotification
{
    /**
     * Handle the event.
     *
     * @param  \Illuminate\Auth\Events\Registered  $event
     * @return void
     */
    public function handle(ClientRegistered $event)
    {
        $event->user->sendEmailVerificationNotification();
    }
}
