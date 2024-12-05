<?php
namespace App\Events;

use App\Models\Client;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ClientRegistered
{
    use Dispatchable, SerializesModels;

    public $client;

    /**
     * Create a new event instance.
     *
     * @param  \App\Models\Client  $client
     * @return void
     */
    public function __construct(Client $client)
    {
        $this->client = $client;
    }
}
