@extends('welcome')

@section('content')


<div class="container my-5" style="max-width: 500px;">
    <h2 class="mb-4">Créer une permission</h2>

    {{-- Premier formulaire (pas de csrf, on peut l’enlever si redondant) --}}
    <form action="{{ url('permissions') }}" method="POST" class="mb-4">
        <div class="mb-3">
            <label for="permission_name1" class="form-label">Nom de la permission</label>
            <input type="text" id="permission_name1" name="name" class="form-control" placeholder="Nom de la permission">
        </div>
        <button type="submit" class="btn btn-outline-primary w-100">Enregistrer</button>
    </form>

    {{-- Deuxième formulaire (avec csrf et required) --}}
    <form action="{{ route('permissions.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="permission_name2" class="form-label">Nom de la permission</label>
            <input type="text" id="permission_name2" name="name" class="form-control" placeholder="Nom de la permission" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Créer</button>
    </form>
</div>
@endsection