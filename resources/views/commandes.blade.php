@extends('welcome')

@section('content')
<div class="container mt-5"> {{-- Ajout d'un conteneur pour centrer et espacer --}}
    <div class="card shadow-sm"> {{-- Carte pour encadrer le contenu --}}
        <div class="card-header bg-success text-white"> {{-- En-tête de la carte --}}
            <h4 class="mb-0">Mes Commandes</h4>
        </div>
        <div class="card-body">
            @if(auth()->check() && auth()->user()->commandes->isNotEmpty())
                <div class="table-responsive"> {{-- Permet au tableau d'être scrollable sur petits écrans --}}
                    <table class="table table-hover table-striped"> {{-- Classes Bootstrap pour un tableau stylisé --}}
                        <thead class="bg-light">
                            <tr>
                                <th scope="col">Commande</th>
                                <th scope="col">État</th>
                                <th scope="col">Date</th>
                                <th scope="col">Détails</th> {{-- Ajout d'une colonne pour des actions/détails futurs --}}
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach(auth()->user()->commandes as $index => $commande)
                                <tr>
                                    <th scope="row">#{{ $commande->id }}</th> {{-- Afficher l'ID réel de la commande est plus utile --}}
                                    <td>
                                        @php
                                            $statusClass = '';
                                            switch($commande->status) {
                                                case 'pending':
                                                    $statusClass = 'badge bg-warning text-dark';
                                                    break;
                                                case 'approved':
                                                    $statusClass = 'badge bg-info';
                                                    break;
                                                case 'shipped':
                                                    $statusClass = 'badge bg-primary';
                                                    break;
                                                case 'completed':
                                                    $statusClass = 'badge bg-success';
                                                    break;
                                                case 'cancelled':
                                                    $statusClass = 'badge bg-danger';
                                                    break;
                                                default:
                                                    $statusClass = 'badge bg-secondary';
                                            }
                                        @endphp
                                        <span class="{{ $statusClass }}">{{ ucfirst($commande->status) }}</span> {{-- Affiche le statut avec un badge coloré --}}
                                    </td>
                                    <td>{{ $commande->created_at->format('d/m/Y H:i') }}</td> {{-- Formatage de la date --}}
                                    <td>
                                        {{-- Ici, vous pourriez ajouter un bouton ou un lien pour voir les détails de la commande --}}
                                        <a href="#" class="btn btn-sm btn-outline-info">Voir</a>
                                    </td>
                                    <td>
                                        <form action="{{ route('admin.change_status', $commande->id)}}" method="post">
                                            @csrf
                                            <select name="status" id="">
                                                 <option name="{{ $commande->status }}" id="">{{ $commande->status }}</option>
                                            <option name="Delivered" >Delivered</option>
                                             <option name="pending" >Pending</option>
                                            </select>
                                            <input type="submit" name="submit" value="submit" onclick="return confirm('are you sure')">
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <div class="alert alert-info" role="alert">
                    Vous n'avez pas encore passé de commande ou vous n'êtes pas connecté.
                </div>
            @endif
        </div>
        <div class="card-footer text-end"> {{-- Pied de carte pour le bouton de retour --}}
            <a href="{{ route('produits') }}" class="btn btn-secondary">Retour aux produits</a>
        </div>
    </div>
</div>
@endsection