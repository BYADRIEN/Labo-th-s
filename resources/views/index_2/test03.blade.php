@extends('welcome')

@section('content')
<div id="client" class="container my-4">
    <div class="card shadow-lg border-0 rounded-4">

        {{-- Header --}}
        <div class="card-header bg-primary text-white d-flex align-items-center rounded-top-4">
            <i class="fas fa-users me-2 fs-4"></i>
            <h4 class="mb-0">Informations Clients</h4>
        </div>

        {{-- Body --}}
        <div class="card-body">
            <p class="text-muted mb-4">Détails des clients enregistrés.</p>

            @if($clients->isEmpty())
                <div class="alert alert-light border text-center p-4 rounded-3 shadow-sm">
                    <i class="fas fa-info-circle me-2 text-primary"></i> Aucun client trouvé.
                </div>
            @else

                {{-- Version PC (tableau) --}}
                <div class="d-none d-md-block table-responsive">
                    <table class="table table-hover align-middle">
                        <thead class="table-light">
                            <tr>
                                <th>ID</th>
                                <th>Nom</th>
                                <th>Prénom</th>
                                <th>Email</th>
                                <th>Adresse</th>
                                <th>Téléphone</th>
                                <th class="text-center">Statut</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($clients as $client)
                                <tr>
                                    <td>{{ $client->id }}</td>
                                    <td>{{ $client->nom }}</td>
                                    <td>{{ $client->prenom }}</td>
                                    <td>{{ $client->email }}</td>
                                    <td>{{ $client->adress }}</td>
                                    <td>{{ $client->phone }}</td>
                                    <td class="text-center">
                                        @if($client->status == 1)
                                            <span class="badge bg-success">
                                                <i class="fas fa-check me-1"></i> Actif
                                            </span>
                                        @else
                                            <span class="badge bg-danger">
                                                <i class="fas fa-ban me-1"></i> Bloqué
                                            </span>
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if($client->status == 1)
                                            <a href="{{ route('users.status.update', ['client_id' => $client->id, 'status_code' => 0]) }}"
                                               class="btn btn-sm btn-warning rounded-pill me-2 mb-2">
                                                <i class="fas fa-lock me-1"></i> Bloquer
                                            </a>
                                        @else
                                            <a href="{{ route('users.status.update', ['client_id' => $client->id, 'status_code' => 1]) }}"
                                               class="btn btn-sm btn-success rounded-pill me-2 mb-2">
                                                <i class="fas fa-unlock me-1"></i> Débloquer
                                            </a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                {{-- Version Mobile (cartes) --}}
                <div class="d-block d-md-none">
                    @foreach($clients as $client)
                        <div class="card mb-3 shadow-sm border-0">
                            <div class="card-body">
                                <h5 class="fw-bold mb-2">
                                    <i class="fas fa-user me-2 text-primary"></i>
                                    {{ $client->prenom }} {{ $client->nom }}
                                </h5>
                                <p class="mb-1"><i class="fas fa-envelope me-2 text-muted"></i> {{ $client->email }}</p>
                                <p class="mb-1"><i class="fas fa-map-marker-alt me-2 text-muted"></i> {{ $client->adress }}</p>
                                <p class="mb-1"><i class="fas fa-phone me-2 text-muted"></i> {{ $client->phone }}</p>

                                {{-- Statut --}}
                                <p class="mb-3">
                                    @if($client->status == 1)
                                        <span class="badge bg-success"><i class="fas fa-check me-1"></i> Actif</span>
                                    @else
                                        <span class="badge bg-danger"><i class="fas fa-ban me-1"></i> Bloqué</span>
                                    @endif
                                </p>

                                {{-- Actions --}}
                                <div>
                                    @if($client->status == 1)
                                        <a href="{{ route('users.status.update', ['client_id' => $client->id, 'status_code' => 0]) }}"
                                           class="btn btn-sm btn-warning rounded-pill me-2 mb-2 w-100">
                                            <i class="fas fa-lock me-1"></i> Bloquer
                                        </a>
                                    @else
                                        <a href="{{ route('users.status.update', ['client_id' => $client->id, 'status_code' => 1]) }}"
                                           class="btn btn-sm btn-success rounded-pill me-2 mb-2 w-100">
                                            <i class="fas fa-unlock me-1"></i> Débloquer
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>

            @endif
        </div>

        {{-- Footer --}}
        <div class="card-footer text-end bg-light rounded-bottom-4">
            <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary rounded-pill shadow-sm">
                <i class="fas fa-arrow-left me-2"></i> Retour à la Dashboard
            </a>
        </div>
    </div>
</div>
@endsection