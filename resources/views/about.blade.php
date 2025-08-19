@extends('welcome')

@section('content')
<style>
    .team-photo {
    width: 200px;        /* taille fixe */
    height: 200px;       /* hauteur fixe pour garder le carré */
    object-fit: cover;   /* coupe l’excédent mais garde les proportions */
    border-radius: 50%;  /* cercle parfait */
}
</style>
{{-- Hero --}}
<section class="hero-section text-white text-center d-flex align-items-center">
    <div class="container">
        <h1 class="display-4 fw-bold">À propos de nous</h1>
        <p class="lead">Découvrez notre histoire, notre équipe et nos engagements envers nos clients.</p>
    </div>
</section>

{{-- Histoire / Mission --}}
<section class="py-5 bg-light">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 mb-4 mb-md-0">
                <img src="https://images.pexels.com/photos/6112433/pexels-photo-6112433.jpeg" class="img-fluid rounded shadow" alt="Notre magasin">
            </div>
            <div class="col-md-6 text-dark">
                <h2>Notre histoire</h2>
                <p>Créé en 2015, notre magasin se spécialise dans des produits de qualité pour tous les passionnés. Nous mettons un point d'honneur à offrir une expérience client exceptionnelle et à partager notre passion avec vous.</p>
                <p>Notre mission : vous proposer des produits uniques, fiables et soigneusement sélectionnés pour votre satisfaction.</p>
            </div>
        </div>
    </div>
</section>

{{-- Points forts --}}
<section class="py-5 bg-success">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow border-0">
                    <div class="card-body">
                        <i class="bi bi-star-fill fs-1 text-primary mb-3"></i>
                        <h5 class="card-title">Qualité</h5>
                        <p class="card-text">Des produits soigneusement sélectionnés pour leur qualité exceptionnelle.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow border-0">
                    <div class="card-body">
                        <i class="bi bi-people-fill fs-1 text-primary mb-3"></i>
                        <h5 class="card-title">Équipe dédiée</h5>
                        <p class="card-text">Une équipe professionnelle et passionnée pour vous accompagner.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow border-0">
                    <div class="card-body">
                        <i class="bi bi-hand-thumbs-up-fill fs-1 text-primary mb-3"></i>
                        <h5 class="card-title">Satisfaction client</h5>
                        <p class="card-text">Notre priorité est que chaque client reparte satisfait et heureux.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{{-- Équipe --}}
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center mb-5 text-dark">Notre équipe</h2>
        <div class="row text-center">
            <div class="col-md-4 mb-4 text-dark">
                <img src="https://images.pexels.com/photos/2860740/pexels-photo-2860740.jpeg" class="team-photo rounded-circle mb-2 img-fluid w-50 mx-auto" alt="Marie">
                <h5>Marie</h5>
                <p>Responsable produits – Passionnée de thé depuis 10 ans.</p>
            </div>
            <div class="col-md-4 mb-4  text-dark">
                <img src="https://images.pexels.com/photos/18235086/pexels-photo-18235086.jpeg" class="team-photo rounded-circle mb-2 img-fluid w-50 mx-auto" alt="Adrien">
                <h5>Adrien</h5>
                <p>Fondateur – Toujours à la recherche de qualité et d’innovation.</p>
            </div>
            <div class="col-md-4 mb-4  text-dark">
                <img src="https://images.pexels.com/photos/2860740/pexels-photo-2860740.jpeg" class="team-photo rounded-circle mb-2 img-fluid w-50 mx-auto" alt="Lucie">
                <h5>Lucie</h5>
                <p>Service client – À votre écoute pour chaque question ou besoin.</p>
            </div>
        </div>
    </div>
</section>

{{-- Invitation / Call-to-action --}}
<section class="py-5 text-center bg-success text-white rounded">
    <div class="container">
        <h2>Venez nous rencontrer !</h2>
        <p>Visitez notre magasin ou explorez notre boutique en ligne pour découvrir nos produits uniques.</p>
        <a href=" {{ route('home')}}" class="btn btn-light btn-lg">Voir la boutique</a>
    </div>
</section>
@endsection

@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">


