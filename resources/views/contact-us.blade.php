@extends('welcome')

@section('content')
<div class="container mt-5 mb-5"> {{-- marge en bas augmentée --}}
    <div class="card shadow-lg border-0 rounded-4 p-4">
        
        {{-- Header --}}
        <div class="text-center mb-4">
            <h2 class="fw-bold">
                <i class="fas fa-envelope-open-text text-success me-2"></i> 
                Contactez-nous
            </h2>
            <p class="text-muted">Nous serons ravis de répondre à vos questions</p>
        </div>

        <div class="row">
            {{-- Formulaire --}}
            <div class="col-md-7 mb-4">
                @if(session('success'))
                    <div class="alert alert-success d-flex align-items-center">
                        <i class="fas fa-check-circle me-2"></i>
                        {{ session('success') }}
                    </div>
                @endif

                <form action="{{ route('contact.send') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">
                            <i class="fas fa-user me-1 text-success"></i> Nom
                        </label>
                        <input type="text" name="name" class="form-control" placeholder="Votre nom" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">
                            <i class="fas fa-envelope me-1 text-success"></i> Email
                        </label>
                        <input type="email" name="email" class="form-control" placeholder="exemple@mail.com" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">
                            <i class="fas fa-tag me-1 text-success"></i> Sujet
                        </label>
                        <input type="text" name="subject" class="form-control" placeholder="Sujet de votre message" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">
                            <i class="fas fa-comment-dots me-1 text-success"></i> Message
                        </label>
                        <textarea name="message" rows="5" class="form-control" placeholder="Écrivez votre message ici..." required></textarea>
                    </div>

                    <button type="submit" class="btn btn-success w-100 fw-bold">
                        <i class="fas fa-paper-plane me-2"></i> Envoyer
                    </button>
                </form>
            </div>

            {{-- Infos pratiques --}}
            <div class="col-md-5">
                <div class="bg-light p-4 rounded-3 shadow-sm h-100">
                    <h5 class="fw-bold mb-3">
                        <i class="fas fa-info-circle text-success me-2"></i> Nos coordonnées
                    </h5>
                    <p><i class="fas fa-map-marker-alt text-success me-2"></i> Rue Exemple 123, 1000 Bruxelles</p>
                    <p><i class="fas fa-phone-alt text-success me-2"></i> +32 123 45 67 89</p>
                    <p><i class="fas fa-envelope text-success me-2"></i> contact@labodessthes.be</p>

                    <h6 class="fw-bold mt-4">
                        <i class="fas fa-share-alt text-success me-2"></i> Suivez-nous
                    </h6>
                    <div class="d-flex gap-3 mt-2">
                        <a href="#" class="text-success fs-4"><i class="fab fa-facebook"></i></a>
                        <a href="#" class="text-success fs-4"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-success fs-4"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="text-success fs-4"><i class="fab fa-linkedin"></i></a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection