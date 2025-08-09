@extends('welcome')

@section('content')
<div id="users" class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="card-header bg-secondary text-white d-flex align-items-center">
            <i class="bi bi-person-badge-fill me-2 fs-4"></i>
            <h4 class="mb-0">Utilisateurs du Système</h4>
        </div>
        <div class="card-body">

            @role('admin')
                <div class="mb-4">
                    <a href="{{ route('roles.index') }}" class="btn btn-outline-primary btn-lg shadow-sm rounded-pill me-3">
                        <i class="bi bi-people-fill me-2"></i>Rôles
                    </a>
                    <a href="{{ route('permissions.index') }}" class="btn btn-outline-primary btn-lg shadow-sm rounded-pill">
                        <i class="bi bi-lock-fill me-2"></i>Permissions
                    </a>
                </div>
            @endrole

            <p class="text-muted mb-4">Gestion des utilisateurs du tableau de bord (admins, modérateurs, etc.).</p>

            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th>ID</th>
                            <th>Nom complet</th>
                            <th>Email</th>
                            <th>Rôle principal</th>
                            <th class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($clients as $client)
                            <tr>
                                <td>{{ $client->id }}</td>
                                <td class="fw-semibold">{{ $client->prenom }} {{ $client->nom }}</td>
                                <td>{{ $client->email }}</td>
                                <td>
                                    @if($client->roles->isNotEmpty())
                                        <span class="badge bg-primary">{{ $client->roles->first()->name }}</span>
                                    @else
                                        <span class="text-muted">Aucun rôle</span>
                                    @endif
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('admin.users.editRoleForm', $client->id) }}" class="btn btn-sm btn-warning" title="Modifier rôle">
                                       Modifier
                                    </a>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="5" class="text-center text-muted">Aucun utilisateur trouvé.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
@endsection