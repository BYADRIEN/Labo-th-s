@extends('welcome')

@section('content')
<div class="container my-5">
    <h3 class="mb-4">Créer une permission</h3>
    <form action="{{ route('permissions.store') }}" method="POST" class="mb-5">
        @csrf
        <div class="mb-3">
            <label for="permissionName" class="form-label">Nom de la permission</label>
            <input type="text" id="permissionName" name="name" class="form-control" placeholder="Nom de la permission" required>
        </div>
        <button type="submit" class="btn btn-primary">Créer la permission</button>
    </form>

    <h3 class="mb-4">Créer un rôle</h3>
    <form action="{{ route('roles.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="roleName" class="form-label">Nom du rôle</label>
            <input type="text" id="roleName" name="name" class="form-control" placeholder="Nom du rôle" required>
        </div>
        <button type="submit" class="btn btn-success">Créer le rôle</button>
    </form>
</div>
@endsection