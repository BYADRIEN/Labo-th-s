<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Client;

class EnsureUserHasRole
{
    /**
     * Traiter une requête entrante.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @param string $role
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function handle(Request $request, Closure $next, string $role): Response
    {
        // Vérifier si l'utilisateur est authentifié
        if (!$request->user()) {
            abort(401, 'Utilisateur non authentifié');
        }

        // Récupérer le client à partir de la base de données
        $client = Client::find($request->user()->id);

        // Si le client n'est pas trouvé, retournez une erreur
        if (!$client) {
            abort(403, 'Utilisateur non trouvé');
        }

        // Vérifier si le client a le rôle requis de manière insensible à la casse et sans espace
        if (strcasecmp(trim($client->type), trim($role)) === 0) {
            return $next($request);
        } else {
            abort(403, 'Accès refusé');
        }
    }
}
