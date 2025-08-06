@extends('welcome')

@section('content')
<div class="container mt-5">
    <h2 class="mb-4">Modifier le profil</h2>

    <form method="POST" action="{{ route('user-profile-information.update') }}" class="card p-4 shadow-sm">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input id="nom" type="text" name="nom" value="{{ old('nom', auth()->user()->nom) }}" required class="form-control">
        </div>

        <div class="mb-3">
            <label for="prenom" class="form-label">Prénom</label>
            <input id="prenom" type="text" name="prenom" value="{{ old('prenom', auth()->user()->prenom) }}" required class="form-control">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input id="email" type="email" name="email" value="{{ old('email', auth()->user()->email) }}" required class="form-control">
        </div>
<div class="mb-3">
    <label for="adress" class="form-label">Adresse</label>
    <input id="adress" type="text" name="adress" value="{{ old('adress', auth()->user()->adress) }}" class="form-control">
</div>

<div class="mb-3">
    <label for="phone" class="form-label">Téléphone</label>
    <input id="phone" type="text" name="phone" value="{{ old('phone', auth()->user()->phone) }}" class="form-control">
</div>
        <button type="submit" class="btn btn-primary">Mettre à jour</button>
    </form>
</div>
 @endsection