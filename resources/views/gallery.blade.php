@extends('welcome')
@extends('components.header')
@section('content')
<section class="hero-section">
    {{-- Ici, tu peux ajouter le contenu qui sera par-dessus ton image de fond --}}
    <div class="container text-center text-white p-5">
        <h1>Gallerie</h1>
        <p>Gallerie du magasin</p>
    </div>
</section>
<div class="gallery">
    <img src="https://via.placeholder.com/200x150" alt="Image 1">
    <img src="https://via.placeholder.com/200x150" alt="Image 2">
    <img src="https://via.placeholder.com/200x150" alt="Image 3">
    <img src="https://via.placeholder.com/200x150" alt="Image 4">
</div>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
