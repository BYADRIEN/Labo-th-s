@extends('welcome')
@section('content')
    <section class="hero-section">
        <div class="container text-center text-white p-5">
            <h1>Nos thés</h1>
            <p>Découvrez nos produits ici.</p>
        </div>
    </section>

    <div class="container py-5">
        @livewire('test') {{-- Correct : inclusion de votre composant Livewire --}}
    </div>
@endsection
 <link rel="stylesheet" href="{{ asset('css/style.css') }}">