      @extends('welcome')
      
@section('content')
 <div class="" id="users">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-secondary text-white">
                            <h4 class="mb-0"><i class="bi bi-person-badge-fill me-2"></i>Utilisateurs du Système</h4>
                        </div>
                        <div class="card-body">

                            @role('admin')
                                <a href="{{ route('roles.index') }}" class="btn btn-outline-primary btn-lg shadow-sm rounded-pill me-2 mb-3">
                                    <i class="bi bi-people-fill me-2"></i>Rôles
                                </a>
                                <a href="{{ route('permissions.index') }}" class="btn btn-outline-primary btn-lg shadow-sm rounded-pill mb-3">
                                    <i class="bi bi-lock-fill me-2"></i>Permissions
                                </a>
                            @endrole

                            <p class="text-muted">Gestion des utilisateurs du tableau de bord (admins, modérateurs, etc.).</p>

                            <div class="table-responsive">
                                <table class="table table-hover align-middle">
                                    <thead class="table-light">
                                        <tr>
                                            <th>ID</th>
                                            <th>Nom complet</th>
                                            <th>Email</th>
                                            <th>Rôle principal</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse($clients as $client)
                                            <tr>
                                                <td>{{ $client->id }}</td>
                                                <td>{{ $client->prenom }} {{ $client->nom }}</td>
                                                <td>{{ $client->email }}</td>
                                                <td>
                                                    @if($client->roles->isNotEmpty())
                                                        <span class="badge bg-primary">{{ $client->roles->first()->name }}</span>
                                                    @else
                                                        <span class="text-muted">Aucun rôle</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.users.editRoleForm', $client->id) }}" class="btn btn-sm btn-warning">
                                                        Modifier rôle
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