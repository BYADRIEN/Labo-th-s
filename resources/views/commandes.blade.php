@extends('welcome')
<p>ma commande</p>
<table class="table">
    <thead>
    <tr>
        <th scope="col">commande</th>
        <th scope="col">etat</th>
        <th scope="col">date</th>
    </tr>
    </thead>
    <tbody>
    @if(auth()->check() && auth()->user()->commandes->isNotEmpty())
        @foreach(auth()->user()->commandes as $index => $commande)
            <tr>
                <th>Commande n°{{ $index + 1 }}</th>
                <td>{{ $commande->status }}</td>
                <td>{{ $commande->created_at }}</td>
                <td></td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="4">Aucune commande trouvée ou utilisateur non connecté.</td>
        </tr>
    @endif
    </tbody>
</table>
<a href="{{ route('produits') }}">retour</a>
