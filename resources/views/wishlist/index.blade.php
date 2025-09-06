@extends('welcome')

@section('content')
<div class="container py-5">
    <h1 class="text-center mb-5 fw-bold" style="font-family: 'Playfair Display', serif;">Ma Wishlist</h1>

    {{-- Alerts --}}
    @foreach (['success', 'info', 'warning'] as $msg)
        @if(session($msg))
            <div class="alert alert-{{ $msg }} alert-dismissible fade show shadow-sm rounded-3" role="alert">
                <i class="fas fa-info-circle me-2"></i> {{ session($msg) }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fermer"></button>
            </div>
        @endif
    @endforeach

    {{-- Wishlist Items --}}
    <div class="row row-cols-1 row-cols-md-3 row-cols-lg-4 g-4">
        @forelse($items as $item)
            <div class="col">
                <div class="card h-100 shadow-sm border-0 rounded-4 overflow-hidden position-relative">
                    
                    {{-- Image --}}
                    <img src="{{ asset('storage/' . $item->img) }}" class="card-img-top" alt="{{ $item->title }}" style="height: 200px; object-fit: cover; transition: transform 0.3s;" 
                         onmouseover="this.style.transform='scale(1.1)';" onmouseout="this.style.transform='scale(1)';">

                    <div class="card-body d-flex flex-column">
                        {{-- Title & Price --}}
                        <h5 class="card-title fw-bold mb-1 text-truncate" title="{{ $item->title }}">
                            <i class="fas fa-leaf text-success me-1"></i> {{ $item->title }}
                        </h5>
                        <p class="text-muted mb-3 fw-semibold">{{ $item->price }} €</p>

                        {{-- Actions --}}
                        <form action="{{ route('wishlist.remove', $item->id) }}" method="POST" class="mb-2">
                            @csrf
                            <button type="submit" class="btn btn-outline-danger btn-sm w-100">
                                <i class="fas fa-trash me-2"></i> Retirer
                            </button>
                        </form>

                        <a href="{{ route('produit.show', $item->id) }}" 
                           class="btn btn-dark btn-sm w-100 d-flex align-items-center justify-content-center mt-auto">
                            <i class="fas fa-eye me-2"></i> Voir l'article
                        </a>
                    </div>
                    
                    {{-- Badge --}}
                    <span class="position-absolute top-0 start-0 bg-success text-white px-3 py-1 rounded-bottom-end shadow-sm" style="font-size: 0.8rem;">
                        Wishlist
                    </span>
                </div>
            </div>
        @empty
            <div class="col">
                <div class="alert alert-warning text-center shadow-sm rounded-3">
                    <i class="fas fa-heart-broken me-2"></i> Aucun article dans votre wishlist pour le moment.
                </div>
            </div>
        @endforelse
    </div>

    {{-- Back to Products --}}
    <div class="text-center mt-5">
        <a href="{{ route('produits') }}" class="btn btn-outline-secondary btn-lg rounded-pill shadow-sm">
            <i class="fas fa-arrow-left me-2"></i> Retour aux produits
        </a>
    </div>
</div>

{{-- Optional CSS --}}
<style>
.card:hover {
    transform: translateY(-5px);
    transition: transform 0.3s;
}
</style>
@endsection