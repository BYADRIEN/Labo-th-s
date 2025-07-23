@extends('welcome')
@section('content')
    <section class="p-5 border border-white">
        <div class="container text-center">
            <div class="row align-items-center"> {{-- Add align-items-center here --}}
                <div class="col">
                    <h1 class="text-dark">Connexion</h1>
                    <form method="post" action="{{ route("login.post") }}">
                        @csrf
                        <div class="mb-3">
                            <label for="fullname" class="form-label text-dark">Vore adresse-email</label>
                            <input type="email" name="email" class="form-control text-dark" id="formGroupExampleInput" placeholder="Example input placeholder">
                            @if($errors->has('email'))
                                <span>{{ $errors->first('email') }}</span>
                            @endif
                        </div>
                        <div class="mb-3">
                           <label for="fullname" class="form-label text-dark">Vore password</label>
                            <input type="password" name="password" class="form-control" id="formGroupExampleInput2" placeholder="Another input placeholder">
                        </div>
                        <input type="submit" name="login" value="connexion">
                    </form>
                    <a href="{{ route('password.request') }}">Mot de passe oublié</a>
                    <a href="{{ route('client.register') }}">S'enregistrer</a>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
