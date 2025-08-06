<?php

namespace App\Actions\Fortify;

use App\Models\Client;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Laravel\Fortify\Contracts\UpdatesUserProfileInformation;

class UpdateUserProfileInformation implements UpdatesUserProfileInformation
{
    public function update(Client $client, array $input): void
    {
        Validator::make($input, [
            'nom' => ['required', 'string', 'max:255'],
            'prenom' => ['required', 'string', 'max:255'],
            'email' => [
                'required',
                'string',
                'email',
                'max:255',
                Rule::unique('client')->ignore($client->id),
            ],
            'adress' => ['nullable', 'string', 'max:255'],
            'phone' => ['nullable', 'string', 'max:20'],
        ])->validateWithBag('updateProfileInformation');

        if (
            $input['email'] !== $client->email &&
            $client instanceof MustVerifyEmail
        ) {
            $this->updateVerifiedClient($client, $input);
        } else {
            $client->forceFill([
                'nom' => $input['nom'],
                'prenom' => $input['prenom'],
                'email' => $input['email'],
                'adress' => $input['adress'] ?? null,
                'phone' => $input['phone'] ?? null,
            ])->save();
        }
    }

    protected function updateVerifiedClient(Client $client, array $input): void
    {
        $client->forceFill([
            'nom' => $input['nom'],
            'prenom' => $input['prenom'],
            'email' => $input['email'],
            'adress' => $input['adress'] ?? null,
            'phone' => $input['phone'] ?? null,
            'email_verified_at' => null,
        ])->save();

        $client->sendEmailVerificationNotification();
    }
}