@extends('welcome')

@section('content')
<div class="container my-5" style="max-width: 800px;">
    <h2 class="mb-4">Utilisateurs</h2>

    <a href="{{ route('home') }}" class="btn btn-secondary mb-4">
        ← Retour à l'accueil
    </a>

    @if($clients->isEmpty())
        <p class="text-muted">Aucun utilisateur trouvé.</p>
    @else
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
                @foreach($clients as $client)
                    <tr>
                        <td>{{ $client->id }}</td>
                        <td>{{ $client->name }}</td>
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
                @endforeach
            </tbody>
        </table>
    @endif
</div>
@endsection