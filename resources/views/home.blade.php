@extends('welcome')
@section('content')
<link href="https://fonts.googleapis.com/css2?family=Kalam:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <style>
        .edu-vic {
    font-family: 'Kalam', cursive; /* texte principal */
      }
        body {
            background-color: #f8f5f0;
            color: #212121;
        }

        .swiper-container {
            width: 100%;
            padding: 20px 0;
            height: 300px;
            overflow: hidden;
        }

        .swiper-slide {
            --background: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            padding: 20px;
            --box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #212121;
        }

        .swiper-slide img {
            width: 180px;
            height: 180px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }

        .swiper-slide p {
            margin: 0.25rem 0;
            font-weight: 600;
        }

        .swiper-slide a {
            display: inline-block;
            margin: 5px 8px 0 8px;
            padding: 6px 14px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        a.text-white:hover {
            color: #a5d6a7 !important;
        }

        a.voir-article {
            background-color: transparent;
            border: 1.5px solid #2e7d32;
            color: #2e7d32;
        }

        a.voir-article:hover {
            background-color: #2e7d32;
            color: #fff;
        }

        a.ajout-panier {
            background-color: #2e7d32;
            border: none;
            color: white;
        }

        a.ajout-panier:hover {
            background-color: #4e342e;
        }

        .section-verte {
            background-color: #2e7d32;
            color: #ffffff;
        }

        .btn-success {
            background-color: #2e7d32;
            border-color: #2e7d32;
            color: #ffffff;
        }

        .btn-success:hover {
            background-color: #4e342e;
            border-color: #4e342e;
        }

        .btn-outline-light {
            border: 1.5px solid #ffffff;
            color: #ffffff;
        }

        .btn-outline-light:hover {
            background-color: #ffffff;
            color: #2e7d32;
        }

        .bg-light {
            background-color: #f8f5f0 !important;
        }
      .bg-overlay {
    background-color: rgba(0, 0, 0, 0.4); /* noir semi-transparent */
    color: white;
}
    </style>
@if(session('success'))
    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fermer"></button>
    </div>
@endif

@if(session('error'))
    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
        {{ session('error') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Fermer"></button>
    </div>
@endif
    <section class="hero-section section-verte p-5">

    <section class="hero-section section-verte p-5 text-center rounded" style="min-height:450px; display:flex; align-items:center; justify-content:center; background: url('https://images.unsplash.com/photo-1510626176961-4b13f9b9f0d0?auto=format&fit=crop&w=1950&q=80') center/cover no-repeat; color:white; text-shadow:1px 1px 6px rgba(0,0,0,0.6);">
<div class="container p-4" style="background-color: rgba(60, 40, 20, 0.6); border-radius:12px;">
        <h1 class="fw-bold edu-vic">Bienvenue sur Labo des thés !</h1>
        <p class="fw-bold mb-3">Commandez en ligne, récupérez sur place</p>
        <p class="lead">
            Labo des thés, votre boutique belge de thé en <strong>Click & Collect</strong>. Explorez nos thés en ligne, passez commande, puis récupérez-les en toute simplicité !
        </p>
        <a href="{{ route('produits') }}" class="btn btn-light mt-3">Découvrir nos thés</a>
    </div>
</section>
</section>
<section class="section-verte py-5">
    <div class="container">
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
                                    <p>{{ $post->price }} €</p>
                                    <a class="text-white" href="{{ route('produit.show', $post->id) }}">voir l'article</a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


    <section class="py-5 bg-light">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 mb-4 mb-md-0">
                    <img src="https://www.thesdelapagode.com/guide-du-the/wp-content/uploads/2019/12/choix-th%C3%A9-vrac-infusette.jpg"
                         alt="Labo des thés - Notre histoire"
                         class="img-fluid rounded shadow-sm">
                </div>
                <div class="col-md-6">
                    <h2 class="fw-bold mb-3 text-dark edu-vic">Notre passion du thé</h2>
                    <p class="text-muted">
                        Chez <strong>Labo des thés</strong>, chaque tasse raconte une histoire. Nous sélectionnons des thés de qualité, issus de traditions millénaires, pour vous offrir des moments de calme, de bien-être et de découverte.
                    </p>
                    <p class="text-muted">
                        Basés en Belgique, nous partageons avec passion notre amour du thé, de ses arômes raffinés à ses bienfaits naturels.
                    </p>
                    <a href="{{ route('about') }}" class="btn btn-success mt-3">En savoir plus</a>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 text-center text-white section-verte">
        <div class="container py-5">
            <h2 class="display-5 fw-bold edu-vic">Découvrez nos thés</h2>
            <p class="lead">Thés verts, noirs, infusions et plus encore... Pour tous les goûts et tous les moments.</p>
            <a href="{{ route('produits') }}" class="btn btn-outline-light mt-3">Parcourir la boutique</a>
        </div>
    </section>

    <section class="py-5 bg-light">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 mb-4 mb-md-0">
                    <img src="https://images.pexels.com/photos/3619784/pexels-photo-3619784.jpeg"
                         alt="Galerie Labo des thés"
                         class="img-fluid rounded shadow-sm">
                </div>
                <div class="col-md-6">
                    <h2 class="fw-bold mb-3 text-dark edu-vic">Plongez dans notre univers</h2>
                    <p class="text-muted">
                        Découvrez la richesse de notre boutique à travers notre galerie photos. Entre thés sélectionnés, moments de dégustation et ateliers, laissez-vous inspirer.
                    </p>
                    <a href="{{ route('gallery') }}" class="btn btn-success mt-3">Voir la galerie</a>
                </div>
            </div>
        </div>
    </section>
<section class="section-verte py-5">
    <div class="container">
        <h1 class="text-center text-white mb-5 edu-vic">Nos coups de cœur</h1>

      <div class="swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($topThes as $post)
                                <div class="swiper-slide d-flex align-items-center justify-content-center">
                                    <div class="text-center text-white">
                                        <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="200">
                                        <p>{{ $post->title }}</p>
                                        <p>{{ $post->price }} €</p>
                                        <a class="text-white" href="{{ route('produit.show', $post->id) }}">voir l'article</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
    </div>
</section>

    <script>
        const swiper = new Swiper('.swiper-container', {
            loop: true,
            slidesPerView: 3,
            spaceBetween: 0,
            autoplay: {
                delay: 7000,
                disableOnInteraction: false,
            },
        });
    </script>
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">