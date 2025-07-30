@extends('welcome')

@section('content')
<div class="container py-5 text-dark" style="max-width: 600px;">
    <h1 class="mb-4">Modification du client</h1>

    <form action="{{ route('updateClientTraitement') }}" method="POST">
        @csrf
        <input type="hidden" name="id" value="{{ $client->id }}">

        <div class="mb-3">
            <label for="nom" class="form-label">Nom :</label>
            <input type="text" class="form-control" id="nom" name="nom" value="{{ $client->nom }}" required>
        </div>

        <div class="mb-3">
            <label for="prenom" class="form-label">Prénom :</label>
            <input type="text" class="form-control" id="prenom" name="prenom" value="{{ $client->prenom }}" required>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email :</label>
            <input type="email" class="form-control" id="email" name="email" value="{{ $client->email }}" required>
        </div>

        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
@endsection