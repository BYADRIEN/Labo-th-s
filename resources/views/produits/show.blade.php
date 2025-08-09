@extends('welcome')
@section('content')
    <div class="container p-5">
        <div class="row">
            <div class="col text-dark">
                <a class="text-dark" href="{{ route('produits') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="50" height="50" viewBox="0 0 50 50"
                         fill="none" stroke-width="1.5" stroke="currentColor" class="size-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="M6.75 15.75 3 12m0 0 3.75-3.75M3 12h18"/>
                    </svg>
                </a>
            </div>
            <div class="col text-dark">
                <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="500">
            </div>
            <div class="col text-dark">
                <h3 class="text-start mb-4">🛍️ {{ $post->title }}</h3>

                {{-- Like Button --}}
                <div class="mb-3">
                    <livewire:like-button :key="$post->id" :post="$post" />
                </div>

                {{-- Wishlist --}}
                <form action="{{ route('wishlist.add', $post->id) }}" method="POST" class="mb-4">
                    @csrf
                    <button type="submit" class="btn btn-outline-danger">💖 Ajouter à la wishlist</button>
                </form>

                {{-- Infos produit --}}
                <div class="p-3 mb-3 bg-light rounded border">
                    <p><strong>Description :</strong><br>{{ $post->content }}</p>
                    <p><strong>Catégorie :</strong> {{ $post->category->catname }}</p>
                    <p><strong>Stock :</strong> {{ $post->stock }} paquets</p>
                    <p><strong>Poids :</strong> {{ $post->poids }} grammes</p>
                    <p><strong>Prix :</strong> {{ $post->price }} €</p>
                    <p><strong>Montant TVA :</strong> {{ $post->montant_tva }} €</p>
                </div>

                {{-- Ajout au panier --}}
@if($post->stock > 0)
    <form action="{{ route('addbook.to.cart', $post->id) }}" method="GET" class="d-flex align-items-center">
        <button type="submit" class="btn btn-dark">🛒 Ajouter au panier</button>
    </form>
@else
    <span class="badge bg-danger">Plus disponible</span>
@endif
            </div>
        </div>
        <form action="{{ url("{$post->path()}/comments") }}" method="POST" class="mt-4">
            @csrf
            <div class="mb-3">
                <label for="body" class="form-label">Commentaire :</label>
                <textarea name="body" id="body" class="form-control" rows="4" placeholder="Votre commentaire ici">{{ old('body') }}</textarea>
            </div>
            <button type="submit" class="btn btn-dark mt-2">Commenter</button>
        </form>

        @forelse($post->comments as $comment)
            <div class="border p-3 my-2 bg-light rounded">
                <p class="mb-1 text-dark">{{ $comment->body }}</p>
                <small class="text-muted">Posté le {{ $comment->created_at->format('d/m/Y') }}</small>
            </div>
        @empty
            <p class="text-muted">Aucun commentaire pour ce produit.</p>
        @endforelse
    </div>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
