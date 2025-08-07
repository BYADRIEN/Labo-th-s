@extends('welcome')

@section('content')
<div class="container my-5">
    <h2 class="mb-4">🛒 Ma commande</h2>

    @if(session('cart'))
        <div class="row row-cols-1 row-cols-md-2 g-4">
            @foreach(session('cart') as $id => $post)
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="{{ asset('storage/' . $post['img']) }}" class="card-img-top" alt="{{ $post['title'] }}" style="max-height: 200px; object-fit: cover;">
                        <div class="card-body">
                            <h5 class="card-title">{{ $post['title'] }}</h5>
                            <p class="card-text"><strong>Prix :</strong> {{ $post['price'] }} €</p>

                            <form action="{{ route('update.to.cart', $id) }}" method="POST" class="d-flex align-items-center">
                                @csrf 
                                @method('PUT')
                                <label for="quantity-{{ $id }}" class="me-2 mb-0">Quantité :</label>
                                <input type="number" name="qty" id="quantity-{{ $id }}" value="{{ $post['quantity'] }}" min="1" class="form-control w-25 me-3">
                                <button type="submit" class="btn btn-outline-dark btn-sm">Mettre à jour</button>
                            </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @php
    $total = 0;
@endphp

@foreach (session('cart') as $id => $post)
    @php
        $price = floatval(str_replace(',', '.', $post['price']));
        $quantity = intval($post['quantity']);
        $total += $price * $quantity;
    @endphp
@endforeach
<p class="text-dark">Total : {{ number_format($total, 2, ',', ' ') }} €</p>

    <div class="card mt-5 shadow">
        <div class="card-header">
            <h4>✅ Finaliser la commande</h4>
        </div>
        <div class="card-body">
            <form action="{{ URL::to('checkout') }}">
                <div class="mb-3">
                    <label for="fullname" class="form-label">Nom complet</label>
                    <input type="text" name="fullname" class="form-control" placeholder="Votre nom complet" required>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Téléphone</label>
                    <input type="text" name="phone" class="form-control" placeholder="Votre numéro" required>
                </div>
                <div class="mb-3">
                    <label for="adress" class="form-label">Adresse</label>
                    <input type="text" name="adress" class="form-control" placeholder="Votre adresse" required>
                </div>
                <button type="submit" name="checkout" class="btn btn-success">Procéder au paiement</button>
            </form>
        </div>
    </div>
    @else
        <div class="alert alert-info mt-4">Le panier est vide.</div>
    @endif
</div>
@endsection

@section('footer')
    @include('components.footer')
@endsection

<link rel="stylesheet" href="{{ asset('css/style.css') }}">