 {{-- 2FA Toggle --}}
    @auth
        <div class="card mt-5 shadow-lg border-0">
            <div class="card-header bg-dark text-white">
                <h5 class="mb-0"><i class="bi bi-shield-lock-fill me-2"></i>Authentification à deux facteurs</h5>
            </div>
            <div class="card-body">
                <form method="POST" action="/user/two-factor-authentication">
                    @csrf
                    @if(auth()->user()->two_factor_secret)
                        @method('DELETE')
                        <div class="mb-3 text-center">
                            <p class="text-muted">Scannez ce code QR avec votre application d'authentification.</p>
                            {!! auth()->user()->twoFactorQrCodeSvg() !!}
                            <div class="mt-3">
                                <h6 class="text-primary">Codes de récupération :</h6>
                                <ul class="list-unstyled d-inline-block text-start">
                                    @foreach (json_decode(decrypt(auth()->user()->two_factor_recovery_codes), true) as $code)
                                        <li><code>{{ $code }}</code></li>
                                    @endforeach
                                </ul>
                                <p class="text-danger small">Gardez ces codes en lieu sûr !</p>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-danger btn-lg rounded-pill">
                            <i class="bi bi-toggle-off me-2"></i>Désactiver 2FA
                        </button>
                    @else
                        <p class="text-muted">Activez l'authentification à deux facteurs pour une sécurité renforcée de votre compte.</p>
                        <button type="submit" class="btn btn-primary btn-lg rounded-pill">
                            <i class="bi bi-toggle-on me-2"></i>Activer 2FA
                        </button>
                    @endif
                </form>
            </div>
        </div>
    @endauth

</div> {{-- fin container py-5 --}}
