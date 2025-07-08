@extends('welcome')
@extends('components.header')
@section('content')
<h1>Ma Galerie</h1>

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
