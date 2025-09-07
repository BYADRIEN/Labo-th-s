@extends('welcome')

@section('content')
<div class="container py-5">
@if(session('success'))
    <div class="alert alert-success rounded-pill px-4 py-2 mb-4 position-relative pe-5" role="alert">
        <i class="fa-solid fa-circle-check me-2"></i>
        {{ session('success') }}
        <button
            type="button"
            class="btn-close position-absolute top-50 end-0 translate-middle-y me-3"
            data-bs-dismiss="alert"
            aria-label="Fermer">
        </button>
    </div>
@endif
    {{-- Bouton retour --}}
    <div class="mb-4">
        <a class="btn btn-outline-success rounded-pill px-4" href="{{ route('produits') }}">
            <i class="fa-solid fa-arrow-left"></i> Retour à la boutique
        </a>
    </div>

    <div class="row g-5 align-items-start">

        {{-- Image produit --}}
        <div class="col-12 col-md-6 text-center">
            <div class="bg-white shadow rounded p-3">
                <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}"
                     class="img-fluid rounded" style="max-height: 400px; object-fit: cover;">
            </div>
        </div>

        {{-- Infos produit --}}
        <div class="col-12 col-md-6">
            <h1 class="fw-bold mb-3 text-success">{{ $post->title }}</h1>

            {{-- Détails produit --}}
            <div class="mb-4">
                <p class="text-muted mb-2">
                    <i class="fa-solid fa-leaf me-1 text-success"></i>{{ $post->category->catname }}
                </p>
                <p class="text-dark">{{ $post->content }}</p>
            </div>

            <div class="p-4 bg-light rounded border mb-4">
                <p class="text-dark">
                    <i class="fa-solid fa-weight-scale me-2 text-success"></i>
                    <strong>Poids :</strong> {{ $post->poids }} g
                </p>
                <p class="text-dark">
                    <i class="fa-solid fa-box-open me-2 text-success"></i>
                    <strong>Stock :</strong> 
                    @if($post->stock > 0)
                        <span class="text-success">{{ $post->stock }} paquets disponibles</span>
                    @else
                        <span class="text-danger">Rupture de stock</span>
                    @endif
                </p>
                <hr>
                <p class="text-dark">
                    <i class="fa-solid fa-receipt me-2 text-success"></i>
                    <strong>Prix HT :</strong> {{ number_format($post->price, 2, ',', ' ') }} €
                </p>
                <p class="text-dark">
                    <i class="fa-solid fa-percent me-2 text-success"></i>
                    <strong>TVA (6%) :</strong> {{ number_format($post->montant_tva, 2, ',', ' ') }} €
                </p>
                <h3 class="fw-bold text-success">
                    <i class="fa-solid fa-tags me-2"></i>
                    {{ number_format($post->price + $post->montant_tva, 2, ',', ' ') }} € TTC
                </h3>
            </div>

            {{-- Like + Wishlist --}}
            <div class="d-flex gap-3 mb-4">
                <livewire:like-button :key="$post->id" :post="$post" />
                <form action="{{ route('wishlist.add', $post->id) }}" method="POST">
                    @csrf
                    <button type="submit" class="btn btn-outline-danger rounded-pill">
                        <i class="fa-solid fa-heart"></i> Ajouter à la wishlist
                    </button>
                </form>
            </div>

            {{-- Ajouter au panier --}}
            @if($post->stock > 0)
                <form action="{{ route('addbook.to.cart', $post->id) }}" method="GET">
                    <button type="submit" class="btn btn-success btn-lg w-100 rounded-pill">
                        <i class="fa-solid fa-cart-shopping"></i> Ajouter au panier
                    </button>
                </form>
            @else
                <span class="badge bg-danger fs-6">
                    <i class="fa-solid fa-circle-xmark"></i> Plus disponible
                </span>
            @endif
        </div>
    </div>

    {{-- Section Commentaires --}}
    <div class="mt-5">
        <h4 class="fw-bold mb-3 text-success">
            <i class="fa-solid fa-comment"></i> Avis des clients
        </h4>

        {{-- Formulaire commentaire --}}
        <form action="{{ url("{$post->path()}/comments") }}" method="POST" class="mb-4">
            @csrf
            <div class="mb-3">
                <textarea name="body" id="body" class="form-control" rows="4" 
                          placeholder="Partagez votre avis...">{{ old('body') }}</textarea>
            </div>
            <button type="submit" class="btn btn-dark rounded-pill">
                <i class="fa-solid fa-paper-plane"></i> Envoyer
            </button>
        </form>

        {{-- Liste commentaires --}}
        @forelse($post->comments as $comment)
            <div class="border p-3 mb-3 bg-white rounded shadow-sm">
                <p class="mb-1">
                    <i class="fa-solid fa-quote-left text-success me-2"></i>
                    {{ $comment->body }}
                </p>
                <small class="text-muted">
                    <i class="fa-regular fa-calendar me-1"></i>
                    Posté le {{ $comment->created_at->format('d/m/Y') }}
                </small>
            </div>
        @empty
            <p class="text-muted fst-italic">
                <i class="fa-solid fa-mug-hot text-success"></i>
                Soyez le premier à donner votre avis sur ce thé
            </p>
        @endforelse
    </div>
</div>
@endsection

@section('footer')
    @include('components.footer')
@endsection

<link rel="stylesheet" href="{{ asset('css/style.css') }}">