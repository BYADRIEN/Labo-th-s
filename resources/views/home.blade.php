@extends('welcome')
@section('content')
    <style>
        .edu-vic {
            font-family: 'Edu VIC WA NT Beginner', sans-serif;
        }

        .swiper-container {
            width: 100%; /* Prend toute la largeur disponible de la colonne */
            height: 300px; /* Ajuste la hauteur selon tes besoins */
            overflow: hidden; /* Évite les débordements */
        }
    </style>
    <section class="hero-section">
        {{-- Ici, tu peux ajouter le contenu qui sera par-dessus ton image de fond --}}
        <div class="container text-center text-white p-5">
            <h1>Bienvenue sur Labo des thés !</h1>
            <p>La boutique de thés en Belgique</p>
        </div>
    </section>
    <section class="bg-success p-5">
        <div class="container text-center">
            <div class="row align-items-center">
                <div class="col-md-5 mb-4 mb-md-0">
                    <h1 class="text-center text-white edu-vic">Nos nouveautés</h1>
                </div>
                <div class="col-md-7">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($nouveautes as $post)
                                <div class="swiper-slide d-flex align-items-center justify-content-center">
                                    <div class="text-center text-white">
                                        <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="200">
                                        <p>{{ $post->title }}</p>
                                        <p>{{ $post->price }}</p>
                                        <a class="text-white" href="{{ route('produit.show', $post->id) }}">voir l'article</a>
                                        <a class="text-white" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="p-5 border border-white">
        <div class="container text-center">
            <div class="row align-items-center"> {{-- Add align-items-center here --}}
                <div class="col-6">
                    <img src="https://www.thesdelapagode.com/guide-du-the/wp-content/uploads/2019/12/choix-th%C3%A9-vrac-infusette.jpg" width="600">
                </div>
                <div class="col-6 text-dark p-5">
                    About me
                </div>
            </div>
        </div>
    </section>
    <section class="hero-section">
        {{-- Ici, tu peux ajouter le contenu qui sera par-dessus ton image de fond --}}
        <div class="container text-center text-white p-5">
            <h1>Nos thés</h1>
            <p>Découvrez nos produits ici.</p>
            <a class="text-white text-decoration-none" href="{{ route('produits') }}">Vers nos produits</a>
        </div>
    </section>
    <section class="p-5 border border-white">
        <div class="container text-center">
            <div class="row align-items-center"> {{-- Add align-items-center here --}}
                <div class="col-6">
                    <img src="https://www.le-guide-sante.org/sites/default/files/styles/full_size_10_cols/public/resources/news/the-bienfaits-mefaits.jpg?itok=ILlT7kbT" width="600">
                </div>
                <div class="col-6 text-dark p-5">
                    Galerie
                </div>
            </div>
        </div>
    </section>
    <section class="bg-success p-5">
        <div class="container text-center">
            <div class="row align-items-center">
                <div class="col-md-5 mb-4 mb-md-0">
                    <h1 class="text-center text-white edu-vic">Nos meilleurs thés</h1>
                </div>
                <div class="col-md-7">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($topThes as $post)
                                <div class="swiper-slide d-flex align-items-center justify-content-center">
                                    <div class="text-center text-white">
                                        <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="200">
                                        <p>{{ $post->title }}</p>
                                        <p>{{ $post->price }}</p>
                                        <a class="text-white" href="{{ route('produit.show', $post->id) }}">voir l'article</a>
                                        <a class="text-white" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        const swiper = new Swiper('.swiper-container', {
            loop: true,
            slidesPerView: 3, // Affiche une seule slide à la fois
            spaceBetween: 0, // Espace entre les slides
            autoplay: {
                delay: 7000,
                disableOnInteraction: false,
            },
        });
    </script>
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">



