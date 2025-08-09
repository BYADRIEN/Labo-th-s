@extends('welcome')

@section('content')
<div class="container my-5" style="max-width: 600px;">
    <h1 class="mb-4">Modifier le rôle de <strong>{{ $user->name }}</strong></h1>

    <form action="{{ route('admin.users.updateRole', $user->id) }}" method="POST" class="card p-4 shadow-sm bg-white rounded">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label for="role_id" class="form-label fw-semibold">Rôle</label>
            <select name="role_id" id="role_id" class="form-select" required>
                @foreach($roles as $role)
                    <option value="{{ $role->id }}" {{ $user->roles->first()?->id == $role->id ? 'selected' : '' }}>
                        {{ ucfirst($role->name) }}
                    </option>
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary w-100 rounded-pill">
            <i class="bi bi-save2 me-2"></i> Mettre à jour
        </button>
    </form>

    <div class="mt-3 text-center">
        <a href="{{ route('users.index') }}" class="btn btn-link">
            <i class="bi bi-arrow-left-circle me-1"></i> Retour à la liste des utilisateurs
        </a>
    </div>
    @endsection