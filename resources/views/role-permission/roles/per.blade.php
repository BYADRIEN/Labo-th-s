@extends('welcome')

@section('content')

<form method="POST" action="{{ route('roles.give-permissions', $role->id) }}">
    @csrf
    @method('PUT')

    <div class="mb-4">
        <h5 class="mb-3 text-primary">Attribuer les permissions au rôle : <strong>{{ $role->name }}</strong></h5>

        <div class="row row-cols-1 row-cols-md-2 g-3">
            @foreach($permissions as $permission)
                <div class="col">
                    <div class="form-check">
                        <input 
                            class="form-check-input" 
                            type="checkbox" 
                            name="permissions[]" 
                            id="perm_{{ $permission->id }}" 
                            value="{{ $permission->id }}"
                            {{ $role->permissions->contains($permission->id) ? 'checked' : '' }}>
                        <label class="form-check-label" for="perm_{{ $permission->id }}">
                            {{ ucfirst($permission->name) }}
                        </label>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <button type="submit" class="btn btn-success rounded-pill px-4">
        <i class="bi bi-check-circle me-2"></i> Enregistrer les permissions
    </button>
</form>
@endsection