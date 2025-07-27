@extends('welcome')

@section('content')
<section class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="card-title text-center mb-4 text-dark">Connexion</h2>
                        
                        <form method="POST" action="{{ route('login.post') }}">
                            @csrf

                            <div class="mb-3">
                                <label for="email" class="form-label">Adresse e-mail</label>
                                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="exemple@domaine.com" required>
                                @error('email')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="password" class="form-label">Mot de passe</label>
                                <input type="password" name="password" class="form-control" id="password" placeholder="••••••••" required>
                            </div>

                            <div class="d-grid">
                                <button type="submit" class="btn btn-dark">Se connecter</button>
                            </div>
                        </form>

                        <div class="mt-4 d-flex justify-content-between">
                            <a class="text-decoration-none" href="{{ route('password.request') }}">Mot de passe oublié ?</a>
                            <a class="text-decoration-none" href="{{ route('client.register') }}">Créer un compte</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('footer')
    @include('components.footer')
@endsection

<link rel="stylesheet" href="{{ asset('css/style.css') }}">