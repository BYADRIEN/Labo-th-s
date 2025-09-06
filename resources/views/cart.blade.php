@extends('welcome')

@section('content')
<div class="container py-5">
    <h2 class="mb-4 text-center text-dark fw-bold" style="font-family: 'Playfair Display', serif;">
        🛒 Ma commande
    </h2>

    @if(session('cart') && count(session('cart')) > 0)
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
            @foreach(session('cart') as $id => $post)
                @php
                    $tvaRate = 0.06; // 6%
                    $montant_tva = $post['price'] * $tvaRate;
                    $prix_ttc = $post['price'] + $montant_tva;
                @endphp
                <div class="col">
                    <div class="card h-100 shadow-sm border-0 rounded-4 position-relative">
                        
                        {{-- Image produit --}}
                        <img src="{{ asset('storage/' . $post['img']) }}" class="card-img-top" 
                             alt="{{ $post['title'] }}" style="height: 200px; object-fit: cover; transition: transform 0.3s;" 
                             onmouseover="this.style.transform='scale(1.05)'" 
                             onmouseout="this.style.transform='scale(1)'">

                        {{-- Badge quantité --}}
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-primary shadow">
                            {{ $post['quantity'] }} <i class="fas fa-box"></i>
                        </span>

                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title text-truncate fw-bold mb-2" title="{{ $post['title'] }}">
                                <i class="fas fa-leaf text-success me-1"></i> {{ $post['title'] }}
                            </h5>
                            <p class="text-muted fw-semibold mb-3">
                                <i class="fas fa-euro-sign me-1"></i> {{ number_format($prix_ttc, 2, ',', ' ') }} €
                            </p>

                            {{-- Formulaire quantité --}}
                            <form action="{{ route('update.to.cart', $id) }}" method="POST" class="d-flex mb-2 align-items-center gap-2">
                                @csrf
                                @method('PUT')
                                <input type="number" name="qty" value="{{ $post['quantity'] }}" min="1" class="form-control w-50">
                                <button type="submit" class="btn btn-outline-dark btn-sm">
                                    <i class="fas fa-sync-alt"></i>
                                </button>
                            </form>

                            {{-- Boutons actions --}}
                            <a href="{{ route('delete.book.to.cart', $id) }}" 
                               class="btn btn-danger btn-sm w-100 mb-2">
                                <i class="fas fa-trash me-1"></i> Supprimer
                            </a>
                            <a href="{{ route('produit.show', $id) }}" 
                               class="btn btn-dark btn-sm w-100 d-flex justify-content-center align-items-center">
                                <i class="fas fa-eye me-1"></i> Voir le produit
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        {{-- Total --}}
        @php
            $total = 0;
            foreach(session('cart') as $id => $post) {
                $prix_ttc = $post['price'] + ($post['price'] * $tvaRate);
                $total += $prix_ttc * $post['quantity'];
            }
        @endphp
        <div class="text-end mt-4">
            <h4 class="fw-bold"><i class="fas fa-calculator me-2"></i> Total : {{ number_format($total, 2, ',', ' ') }} €</h4>
        </div>

        {{-- Formulaire finalisation --}}
        <div class="card mt-5 shadow-sm rounded-4">
            <div class="card-header bg-success text-white">
                <h4 class="mb-0"><i class="fas fa-check-circle me-2"></i> Finaliser la commande</h4>
            </div>
            <div class="card-body">
                <form action="{{ URL::to('checkout') }}" class="row g-3">
                    <div class="col-12 col-md-4">
                        <label for="fullname" class="form-label fw-semibold"><i class="fas fa-user me-1"></i> Nom complet</label>
                        <input type="text" name="fullname" class="form-control" 
                               value="{{ old('fullname', $commande?->fullname ?? '') }}" required>
                    </div>
                    <div class="col-12 col-md-4">
                        <label for="phone" class="form-label fw-semibold"><i class="fas fa-phone me-1"></i> Téléphone</label>
                        <input type="text" name="phone" class="form-control" 
                               value="{{ old('phone', $client->phone ?? '') }}" required>
                    </div>
                    <div class="col-12 col-md-4">
                        <label for="adress" class="form-label fw-semibold"><i class="fas fa-map-marker-alt me-1"></i> Adresse</label>
                        <input type="text" name="adress" class="form-control" 
                               value="{{ old('adress', $client->adress ?? '') }}" required>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-success btn-lg w-100 mt-3">
                            <i class="fas fa-shopping-bag me-2"></i> Procéder au click & collect
                        </button>
                    </div>
                </form>
            </div>
        </div>

    @else
        <div class="alert alert-info text-center mt-4 shadow-sm">
            <i class="fas fa-info-circle me-2"></i> Le panier est vide.
        </div>
    @endif
</div>

{{-- Footer --}}
@section('footer')
    @include('components.footer')
@endsection

{{-- Optional CSS --}}
<style>
.card:hover {
    transform: translateY(-5px);
    transition: transform 0.3s;
}
</style>
@endsection