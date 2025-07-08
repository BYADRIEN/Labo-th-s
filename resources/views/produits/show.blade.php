@extends('welcome')
@extends('components.header')
@section('content')
    <section class="p-5">
        <div class="container text-center">
            <div class="row align-items-center">
                <div class="col-md-5 mb-4 mb-md-0">
                    <h1 class="text-center text-dark edu-vic p-2">Detail du produit</h1>
                    <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="300">
                    <br>
                    <form class="p-4" action="{{ route('wishlist.add', $post->id) }}" method="POST">
                        @csrf
                        <button type="submit">Ajouter à la wishlist</button>
                    </form>
                    <a href="{{ route('home') }}">Retour à la liste des posts</a>
                    <livewire:like-button :key="$post->id" :$post/>
                    <h2 class="text-dark">Commentaires :</h2>
                    <div>
                        {{$post->body}}
                    </div>
                    <form action="{{ url("{$post->path()}/comments") }}" method="POST">
                        {{ csrf_field() }}
                        <textarea name="body">{{ old('body') }}</textarea>
                        <button>commenter</button>
                    </form>
                </div>
                <div class="col-md-7">
                    <h3 class="text-dark">Nom du Produit : {{ $post->title }}</h3>
                    <h3 class="text-dark">Description : {{ $post->content }}</h3>
                    <h3 class="text-dark">Categorie : {{ $post->category->catname }}</h3>
                    <h3 class="text-dark">Prix : {{ $post->price }}</h3>
                    <h3 class="text-dark">Stock : {{ $post->stock }}</h3>
                    <h3 class="text-dark">Poids : {{ $post->poids }}</h3>
                    <h3 class="text-dark">Montant_TVA : {{ $post->montant_tva }}</h3>
                    <a class="text-danger" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier (0)</a>
                    <a href="{{ route('home') }}">Retour à la liste des posts</a>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
