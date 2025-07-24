@extends('welcome')

@section('content')
<div class="container py-5">
    <h1 class="text-center mb-5">Ma Wishlist</h1>

    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fermer"></button>
        </div>
    @endif

    @if (session('info'))
        <div class="alert alert-info alert-dismissible fade show" role="alert">
            {{ session('info') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fermer"></button>
        </div>
    @endif

    <div class="row row-cols-1 row-cols-md-2 g-4">
        @forelse($items as $item)
            <div class="col">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">{{ $item->title }}</h5>
                         <h5 class="card-title">{{ $item->price }}</h5>
                     <img src="{{ asset('storage/' . $item->img) }}" class="card-img-top" alt="{{ $item->title }}" style="height: 200px; object-fit: cover;">
                        <form action="{{ route('wishlist.remove', $item->id) }}" method="POST" class="mt-3">
                            @csrf
                            <button type="submit" class="btn btn-outline-danger btn-sm">Retirer de la wishlist</button>
                        </form>
                    </div>
                </div>
            </div>
        @empty
            <div class="col">
                <div class="alert alert-warning text-center">
                    Aucun article dans votre wishlist pour le moment.
                </div>
            </div>
        @endforelse
    </div>

    <div class="text-center mt-5">
        <a href="{{ route('produits') }}" class="btn btn-secondary">Retour aux produits</a>
    </div>
</div>
@endsection