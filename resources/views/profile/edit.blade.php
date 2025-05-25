@extends('welcome')
<h1>edit profile</h1>
<form method="POST" action="{{ route('user-profile-information.update') }}">
    @csrf
    @method('PUT')

    <div>
        <label for="nom">Nom</label>
        <input id="nom" type="text" name="nom" value="{{ old('nom', auth()->user()->nom) }}" required>
    </div>

    <div>
        <label for="prenom">Prénom</label>
        <input id="prenom" type="text" name="prenom" value="{{ old('prenom', auth()->user()->prenom) }}" required>
    </div>

    <div>
        <label for="email">Email</label>
        <input id="email" type="email" name="email" value="{{ old('email', auth()->user()->email) }}" required>
    </div>

    <button type="submit">Mettre à jour</button>
</form>
