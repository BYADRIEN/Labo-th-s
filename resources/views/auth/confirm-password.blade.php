@extends('welcome')
@extends('components.header')

@section('content')
    <div class="container">
        <h1>Confirmer le mot de passe</h1>
        <form method="POST" action="{{ route('password.confirm') }}">
            @csrf
            <div>
                <label for="password">Mot de passe</label>
                <input id="password" type="password" name="password" required autofocus>
            </div>
            <button type="submit">Confirmer</button>
        </form>
    </div>
@endsection
