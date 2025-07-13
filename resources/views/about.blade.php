@extends('welcome')
@extends('components.header')
@section('content')
    <section class="hero-section">
        {{-- Ici, tu peux ajouter le contenu qui sera par-dessus ton image de fond --}}
        <div class="container text-center text-white p-5">
            <h1>A propos de nous</h1>
            <p>Description du magasin</p>
        </div>
    </section>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">



