@extends('welcome')
@include('components.header')
@section('content')
<section class="hero-section">
    {{-- Ici, tu peux ajouter le contenu qui sera par-dessus ton image de fond --}}
    <div class="container text-center text-white p-5">
        <h1>Nos thés</h1>
        <p>Découvrez nos produits ici.</p>
    </div>
</section>
<div class="container">
<div class="row">
    <div class="col-5">
        Filtre
        <form method="GET">
            <select name="filter[category.catname]" onchange="this.form.submit()">
                <option value="">Tous les thés</option>
                @foreach($categories as $category)
                    <option
                        value="{{ $category->catname }}" {{ request('filter.category.catname') == $category->catname ? 'selected' : '' }}>
                        {{ $category->catname }}
                    </option>
                @endforeach
            </select>
        </form>
    </div>
    <div class="col-7">
        <h1 class="text-dark">Nos produits</h1>
        @if(session('success'))
            <div>
                {{ session('success') }}
            </div>
        @endif
        {{-- GRILLE DES PRODUITS --}}
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4"> {{-- g-4 pour plus d'espace entre les cartes --}}
            @foreach($posts as $post)
                <div class="col">
                    <div class="card h-100 shadow-sm border-0 d-flex flex-column">
                        <img src="{{ asset('storage/' . $post->img) }}" class="img-fluid" alt="{{ $post->title }}">
                        <p>{{ $post->title }}</p>
                        <p>{{ $post->price }}</p>
                        <a class="text-success" href="{{ route('produit.show', $post->id) }}">voir l'article</a>
                        <a class="text-danger" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier</a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
</div>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
