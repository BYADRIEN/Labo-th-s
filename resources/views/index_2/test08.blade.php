@extends('welcome')

@section('content')
{{-- 2FA Toggle --}}
@auth
    <div class="card mt-5 shadow-lg border-0">
        <div class="card-header bg-dark text-white d-flex align-items-center">
            <i class="bi bi-shield-lock-fill me-2 fs-5"></i>
            <h5 class="mb-0">Authentification à deux facteurs</h5>
        </div>
        <div class="card-body">
            <form method="POST" action="/user/two-factor-authentication">
                @csrf
                @if(auth()->user()->two_factor_secret)
                    @method('DELETE')
                    <div class="mb-4 text-center">
                        <p class="text-muted">Scannez ce code QR avec votre application d'authentification.</p>
                        {!! auth()->user()->twoFactorQrCodeSvg() !!}
                    </div>

                    <div class="mb-4">
                        <h6 class="text-primary">Codes de récupération :</h6>
                        <ul class="list-unstyled d-inline-block text-start">
                            @foreach (json_decode(decrypt(auth()->user()->two_factor_recovery_codes), true) as $code)
                                <li><code class="fs-6">{{ $code }}</code></li>
                            @endforeach
                        </ul>
                        <p class="text-danger small fst-italic mt-2">
                            Gardez ces codes en lieu sûr ! Ils vous permettront d'accéder à votre compte si vous perdez l'accès à votre application d'authentification.
                        </p>
                    </div>

                    <button type="submit" class="btn btn-danger btn-lg rounded-pill d-flex align-items-center mx-auto">
                        <i class="bi bi-toggle-off me-2 fs-5"></i>Désactiver 2FA
                    </button>
                @else
                    <p class="text-muted mb-4">
                        Activez l'authentification à deux facteurs pour une sécurité renforcée de votre compte.
                    </p>
                    <button type="submit" class="btn btn-primary btn-lg rounded-pill d-flex align-items-center mx-auto">
                        <i class="bi bi-toggle-on me-2 fs-5"></i>Activer 2FA
                    </button>
                @endif
            </form>
        </div>
    </div>
@endauth
@endsection