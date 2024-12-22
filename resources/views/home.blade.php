@extends('welcome')
@extends('components.header')
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
    <section>
        <img src="https://cdn.futura-sciences.com/sources/images/qr/aleatoire-interieur.jpg" alt="">
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
                            @foreach($posts as $post)
                                <div class="swiper-slide d-flex align-items-center justify-content-center">
                                    <div class="text-center text-white">
                                        <p>{{ $post->title }}</p>
                                        <p>{{ $post->content }}</p>
                                        <p>{{ $post->slug }}</p>
                                        <p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p>
                                        <a class="text-white" href="{{ route('produit.show', $post->slug) }}">voir l'article</a>

                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-success p-5 border border-white">
        <div class="container text-center text-white">
            <div class="row align-items-start">
                <div class="col-md-5 mb-4 mb-md-0">
                    img
                </div>
                <div class="col-md-7">
                    About me
                </div>
            </div>
        </div>
    </section><form method="POST" action="/user/two-factor-authentication">
        @csrf

        @if(auth()->check() && auth()->user()->two_factor_secret)
            @method('DELETE')

            <div class="pb-5">
                {!! auth()->user()->twoFactorQrCodeSvg() !!}
            </div>

            <button class="btn btn-danger">Désactiver</button>
        @else
            <button class="btn btn-primary">Activer</button>
        @endif
    </form>
    <section class="bg-success">
        <section class="bg-success p-5">
            <div class="container text-center text-white">
                <div class="row align-items-start">
                    <div class="col-md-5 mb-4 mb-md-0">
                        Nos thés
                    </div>
                    <div class="col-md-7">
                        ici
                    </div>
                </div>
            </div>
        </section>
    </section>
    <section class="bg-success p-5 border border-white">
        <div class="container text-center text-white">
            <div class="row align-items-start">
                <div class="col-md-5 mb-4 mb-md-0">
                    Gallerie
                </div>
                <div class="col-md-7">
                    ici
                </div>
            </div>
        </div>
    </section>
    <section class="bg-success p-5 border">
        <div class="container text-center text-white">
            <div class="row align-items-start">
                <div class="col-md-5 mb-4 mb-md-0">
                    ici
                </div>
                <div class="col-md-7">
                    les thés avec etoile
                </div>
            </div>
        </div>
    </section>
    <script>
        const swiper = new Swiper('.swiper-container', {
            loop: true,
            slidesPerView: 1, // Affiche une seule slide à la fois
            spaceBetween: 0, // Espace entre les slides
            autoplay: {
                delay: 7000,
                disableOnInteraction: false,
            },
        });
    </script>
@endsection
@section('footer')
    @include('components.footer')
@endsection




