@extends('welcome')

@section('content')
<div id="client" class="container my-5" role="tabpanel" aria-labelledby="client-tab">
    <div class="card shadow-lg border-0">
        <div class="card-header bg-primary text-white d-flex align-items-center">
            <i class="bi bi-people-fill me-2 fs-4"></i>
            <h4 class="mb-0">Informations Clients</h4>
        </div>
        <div class="card-body">
            <p class="text-muted mb-4">Détails des clients enregistrés.</p>

            @if($clients->isEmpty())
                <div class="alert alert-info text-center">
                    Aucun client trouvé.
                </div>
            @else
                <div class="table-responsive">
                    <table class="table table-striped table-hover align-middle">
                        <thead class="table-light">
                            <tr>
                                <th>ID</th>
                                <th>Nom</th>
                                <th>Prénom</th>
                                <th>Email</th>
                                <th>Adresse</th>
                                <th>Téléphone</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($clients as $client)
                                <tr>
                                    <td>{{ $client->id }}</td>
                                    <td class="fw-semibold">{{ $client->nom }}</td>
                                    <td>{{ $client->prenom }}</td>
                                    <td>{{ $client->email }}</td>
                                    <td>{{ $client->adress }}</td>
                                    <td>{{ $client->phone }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('client.edit', $client->id) }}" class="btn btn-sm btn-warning me-2" title="Éditer">
                                            Modifier
                                        </a>
                                        <form action="{{ route('delete_client', $client->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Confirmer la suppression ?');">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-danger" title="Supprimer">
                                            Suprimer
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endif

        </div>
    </div>
</div>
@endsection