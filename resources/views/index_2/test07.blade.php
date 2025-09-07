@extends('welcome')

@section('content')
<div id="users" class="container my-5">
    <div class="card shadow-lg border-0 rounded-4">
        
        {{-- Header --}}
        <div class="card-header bg-gradient bg-dark text-white d-flex align-items-center rounded-top-4">
            <i class="fas fa-users-cog me-2 fs-4"></i>
            <h4 class="mb-0">Gestion des Utilisateurs</h4>
        </div>

        <div class="card-body">

            {{-- Boutons Rôles & Permissions (admin uniquement) --}}
            @role('admin')
                <div class="mb-4 d-flex flex-wrap gap-2">
                    <a href="{{ route('roles.index') }}" class="btn btn-outline-success btn-lg shadow-sm rounded-pill">
                        <i class="fas fa-user-shield me-2"></i> Rôles
                    </a>
                    <a href="{{ route('permissions.index') }}" class="btn btn-outline-success btn-lg shadow-sm rounded-pill">
                        <i class="fas fa-lock me-2"></i> Permissions
                    </a>
                </div>
            @endrole

            <p class="text-muted mb-4">
                <i class="fas fa-info-circle me-1 text-success"></i>
                Gestion des utilisateurs du tableau de bord (admins, modérateurs, etc.).
            </p>

            {{-- Version PC (tableau) --}}
            <div class="d-none d-md-block table-responsive">
                <table class="table align-middle table-hover">
                    <thead class="table-light">
                        <tr>
                            <th><i class="fas fa-hashtag"></i></th>
                            <th><i class="fas fa-user me-1"></i> Nom complet</th>
                            <th><i class="fas fa-envelope me-1"></i> Email</th>
                            <th><i class="fas fa-id-badge me-1"></i> Rôle principal</th>
                            <th class="text-center"><i class="fas fa-cogs me-1"></i> Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($clients as $client)
                            <tr>
                                <td>{{ $client->id }}</td>
                                <td class="fw-semibold">
                                    <i class="fas fa-user-circle text-success me-1"></i>
                                    {{ $client->prenom }} {{ $client->nom }}
                                </td>
                                <td>{{ $client->email }}</td>
                                <td>
                                    @if($client->roles->isNotEmpty())
                                        <span class="badge bg-success px-3 py-2 rounded-pill shadow-sm">
                                            <i class="fas fa-user-tag me-1"></i>
                                            {{ $client->roles->first()->name }}
                                        </span>
                                    @else
                                        <span class="text-muted fst-italic">Aucun rôle</span>
                                    @endif
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('admin.users.editRoleForm', $client->id) }}" 
                                       class="btn btn-sm btn-warning rounded-pill shadow-sm">
                                       <i class="fas fa-edit me-1"></i> Modifier
                                    </a>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="5" class="text-center text-muted py-4">
                                    <i class="fas fa-user-slash fa-lg d-block mb-2"></i>
                                    Aucun utilisateur trouvé.
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            {{-- Version Mobile (cartes) --}}
            <div class="d-block d-md-none">
                @forelse($clients as $client)
                    <div class="card mb-3 shadow-sm border-0">
                        <div class="card-body">
                            <h6 class="fw-bold mb-2">
                                <i class="fas fa-user-circle text-success me-1"></i>
                                {{ $client->prenom }} {{ $client->nom }}
                            </h6>
                            <p class="mb-1"><i class="fas fa-envelope me-2 text-muted"></i>{{ $client->email }}</p>
                            <p class="mb-2">
                                @if($client->roles->isNotEmpty())
                                    <span class="badge bg-success px-3 py-2 rounded-pill shadow-sm">
                                        <i class="fas fa-user-tag me-1"></i> {{ $client->roles->first()->name }}
                                    </span>
                                @else
                                    <span class="text-muted fst-italic">Aucun rôle</span>
                                @endif
                            </p>
                            <a href="{{ route('admin.users.editRoleForm', $client->id) }}" 
                               class="btn btn-sm btn-warning rounded-pill shadow-sm w-100">
                               <i class="fas fa-edit me-1"></i> Modifier
                            </a>
                        </div>
                    </div>
                @empty
                    <div class="alert alert-light border text-center p-4 rounded-3 shadow-sm">
                        <i class="fas fa-user-slash fa-lg d-block mb-2"></i>
                        Aucun utilisateur trouvé.
                    </div>
                @endforelse
            </div>

        </div>

        {{-- Footer --}}
        <div class="card-footer text-end bg-light rounded-bottom-4">
            <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary rounded-pill shadow-sm">
                <i class="fas fa-arrow-left me-1"></i> Retour à la dashboard
            </a>
        </div>
    </div>
</div>
@endsection