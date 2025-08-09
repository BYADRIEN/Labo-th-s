@extends('welcome')

@section('content')
<div class="container my-5">
    <h2 class="mb-4 text-primary fw-bold">Gestion des Rôles</h2>

    <a href="{{ route('home') }}" class="btn btn-outline-secondary mb-4">
        <i class="bi bi-arrow-left-circle me-1"></i> Retour à l'accueil
    </a>

    @forelse($roles as $role)
        <div class="card mb-3 border-0 shadow-sm rounded-3">
            <div class="card-body d-flex justify-content-between align-items-center">
                <div>
                    <h5 class="mb-0 text-dark">{{ $role->name }}</h5>
                    <small class="text-muted">ID : {{ $role->id }}</small>
                </div>
                <div class="btn-group" role="group" aria-label="Actions rôle">
                    <a href="{{ url('roles/'.$role->id.'/give-permissions') }}" class="btn btn-sm btn-outline-info">
                        <i class="bi bi-shield-lock-fill me-1"></i> Permissions
                    </a>
                    <a href="{{ url('roles/'.$role->id.'/edit') }}" class="btn btn-sm btn-outline-warning">
                        <i class="bi bi-pencil-square me-1"></i> Modifier
                    </a>
                    <form action="{{ route('roles.destroy', $role->id) }}" method="POST" onsubmit="return confirm('Voulez-vous vraiment supprimer ce rôle ?');" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm btn-outline-danger">
                            <i class="bi bi-trash-fill me-1"></i> Supprimer
                        </button>
                    </form>
                </div>
            </div>
        </div>
    @empty
        <p class="text-muted fst-italic">Aucun rôle trouvé pour le moment.</p>
    @endforelse

    <a href="{{ url('roles/create') }}" class="btn btn-primary mt-4 rounded-pill px-4">
        <i class="bi bi-plus-circle me-2"></i> Ajouter un rôle
    </a>
</div>
@endsection