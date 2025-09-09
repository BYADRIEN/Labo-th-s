@extends('welcome')
@section('content')

<section class="hero-section bg-dark text-white text-center d-flex align-items-center justify-content-center">
    <div class="container">
        <h1 class="display-4 fw-bold">Galerie</h1>
        <p class="lead">Découvrez la galerie de notre magasin</p>
    </div>
</section>

<div class="container py-5">
    <div class="row g-4">

        <!-- Première image -->
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card shadow-sm border-0">
                <img src="https://images.pexels.com/photos/6826026/pexels-photo-6826026.jpeg" 
                     class="card-img-top img-fluid rounded" alt="Photo 1">
                <div class="card-body text-center">
                    <h6 class="card-title">Salon dégustation de votre thé</h6>
                </div>
            </div>
        </div>

        <!-- Deuxième image -->
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card shadow-sm border-0">
                <img src="https://images.pexels.com/photos/2147149/pexels-photo-2147149.jpeg" 
                     class="card-img-top img-fluid rounded" alt="Photo 2">
                <div class="card-body text-center">
                    <h6 class="card-title">Vitrine du magasin</h6>
                </div>
            </div>
        </div>

        <!-- Troisième image -->
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card shadow-sm border-0">
                <img src="https://images.pexels.com/photos/7772022/pexels-photo-7772022.jpeg" 
                     class="card-img-top img-fluid rounded" alt="Photo 3">
                <div class="card-body text-center">
                    <h6 class="card-title">Vos commandes prêtes à être expédiées</h6>
                </div>
            </div>
        </div>

        <!-- Ajoute autant d'images que tu veux en copiant ce bloc -->
 <!-- Troisième image -->
        <div class="col-6 col-md-4 col-lg-3">
            <div class="card shadow-sm border-0">
                <img src="https://images.pexels.com/photos/7772120/pexels-photo-7772120.jpeg" 
                     class="card-img-top img-fluid rounded" alt="Photo 3">
                <div class="card-body text-center">
                    <h6 class="card-title">Préparation de vos commandes</h6>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">