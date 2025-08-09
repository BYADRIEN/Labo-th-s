@extends('welcome')

@section('content')
<form action="{{ route('roles.update', $role->id) }}" method="POST" class="w-50 mx-auto my-4">
    @csrf
    @method('PUT')

    <div class="mb-3">
        <label for="roleName" class="form-label">Nom du rôle</label>
        <input 
            type="text" 
            id="roleName" 
            name="name" 
            placeholder="Nom du rôle" 
            value="{{ old('name', $role->name) }}" 
            class="form-control @error('name') is-invalid @enderror" 
            required
        >
        @error('name')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
        @enderror
    </div>

    <button type="submit" class="btn btn-warning w-100">Modifier le rôle</button>
</form>
@endsection