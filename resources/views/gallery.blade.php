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
        @foreach(range(1,8) as $i)
            <div class="col-6 col-md-4 col-lg-3">
                <div class="card shadow-sm border-0">
                    <img src="https://images.pexels.com/photos/4150916/pexels-photo-4150916.jpeg" 
                         class="card-img-top img-fluid rounded" alt="Image {{$i}}">
                    <div class="card-body text-center">
                        <h6 class="card-title">Image du magasin</h6>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

@endsection

@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
