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
                      @if($client->status == 1)
    <a href="{{ route('users.status.update', ['client_id' => $client->id, 'status_code' => 0]) }}"
       class="btn btn-sm btn-warning me-2"
       title="Bloquer">
        Bloquer
    </a>
@else
    <a href="{{ route('users.status.update', ['client_id' => $client->id, 'status_code' => 1]) }}"
       class="btn btn-sm btn-success me-2"
       title="Débloquer">
        Débloquer
    </a>
@endif
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