@extends('welcome')

@section('content')
<div class="container my-5" style="max-width: 700px;">
    <h2 class="mb-4">Permissions</h2>

    <a href="{{ route('home') }}" class="btn btn-secondary mb-4">
        ← Retour à l'accueil
    </a>

    @if($permissions->isEmpty())
        <p class="text-muted">Aucune permission trouvée.</p>
    @else
        <div class="list-group mb-3">
            @foreach($permissions as $permission)
                <div class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <strong>#{{ $permission->id }}</strong> - {{ $permission->name }}
                    </div>
                    <div class="btn-group" role="group" aria-label="Actions permission">
                        <a href="{{ url('permissions/'.$permission->id.'/edit') }}" class="btn btn-sm btn-outline-primary">
                            Éditer
                        </a>
                        <form action="{{ route('permissions.destroy', $permission->id) }}" method="POST" onsubmit="return confirm('Voulez-vous vraiment supprimer cette permission ?');">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-outline-danger">
                                Supprimer
                            </button>
                        </form>
                    </div>
                </div>
            @endforeach
        </div>
    @endif

    <a href="{{ url('permissions/create') }}" class="btn btn-success">
        Ajouter une permission
    </a>
</div>
@endsection