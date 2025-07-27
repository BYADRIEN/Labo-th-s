@extends('welcome')

@section('content')
<div class="container mt-5">
    <h2 class="mb-4">Réinitialisation du mot de passe</h2>

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <div class="mb-3">
            <label for="email" class="form-label">Adresse email :</label>
            <input type="email" class="form-control @error('email') is-invalid @enderror"
                   id="email" name="email" value="{{ old('email') }}" required autofocus>
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <button type="submit" class="btn btn-primary w-100">Envoyer le lien de réinitialisation</button>
        </div>

        @if (session('status'))
            <div class="alert alert-success mt-3">
                {{ session('status') }}
            </div>
        @endif
    </form>
</div>
@endsection