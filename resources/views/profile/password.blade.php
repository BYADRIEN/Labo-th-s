@extends('welcome')

@section('content')
<div class="container py-5">
    <h1 class="mb-4 text-center">Changer le mot de passe</h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="POST" action="{{ route('user-password.update') }}" class="card p-4 shadow-sm">
                @csrf
                @method('PUT')

                <div class="mb-3">
                    <label for="current_password" class="form-label">Mot de passe actuel</label>
                    <input type="password" class="form-control" id="current_password" name="current_password" required>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Nouveau mot de passe</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>

                <div class="mb-4">
                    <label for="password_confirmation" class="form-label">Confirmer le nouveau mot de passe</label>
                    <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Mettre à jour le mot de passe</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection