@extends('welcome')

@section('content')
<div class="container py-5">
    <h1 class="text-center mb-4">Inscription</h1>

    <form action="{{ url('/test/traitement') }}" method="POST" class="card p-4 shadow-sm mx-auto" style="max-width: 600px;">
        @csrf

        <div class="mb-3">
            <label for="email" class="form-label">Adresse email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Mot de passe</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>

        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input type="text" class="form-control @error('name') is-invalid @enderror" id="nom" name="nom" required>
            @error('name')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="prenom" class="form-label">Prénom</label>
            <input type="text" class="form-control" id="prenom" name="prenom" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">S'inscrire</button>
    </form>

    @if(session('status'))
        <div class="alert alert-info text-center mt-3">{{ session('status') }}</div>
    @endif

    <div class="text-center mt-3">
        <a class="text-decoration-none" href="{{ route('home') }}" class="btn btn-link">Retour à l'accueil</a>
    </div>
</div>
@endsection