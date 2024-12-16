<?php

namespace App\Actions\Fortify;

use App\Models\Client; // Modifiez si nécessaire
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Laravel\Fortify\Contracts\UpdatesUserProfileInformation;

class UpdateUserProfileInformation implements UpdatesUserProfileInformation
{
    public function update(Client $client, array $input): void
    {
        // Validation des données
        Validator::make($input, [
            'nom' => ['required', 'string', 'max:255'],       // Validation pour `nom`
            'prenom' => ['required', 'string', 'max:255'],   // Validation pour `prenom`
            'email' => [
                'required',
                'string',
                'email',
                'max:255',
                Rule::unique('client')->ignore($client->id),
            ],
        ])->validateWithBag('updateProfileInformation');

        // Vérifiez si l'utilisateur doit confirmer son e-mail
        if ($input['email'] !== $client->email &&
            $client instanceof MustVerifyEmail) {
            $this->updateVerifiedClient($client, $input);
        } else {
            // Mise à jour des informations du client
            $client->forceFill([
                'nom' => $input['nom'],       // Mise à jour de la colonne `nom`
                'prenom' => $input['prenom'], // Mise à jour de la colonne `prenom`
                'email' => $input['email'],
            ])->save();
        }
    }

    protected function updateVerifiedClient(Client $client, array $input): void
    {
        $client->forceFill([
            'nom' => $input['nom'],
            'prenom' => $input['prenom'],
            'email' => $input['email'],
            'email_verified_at' => null,
        ])->save();

        $client->sendEmailVerificationNotification();
    }
}
