@extends('welcome')
@extends('components.header')
@section('content')
<p>ma commande</p>
@if(session('cart'))
    @foreach(session('cart') as $id => $post)
        <div>
            <h2>{{ $post['title'] }}</h2>
            <p>{{ $post['price'] }} €</p>
            <img src="{{ asset('storage/'.$post['img']) }}" alt="{{ $post['title'] }}">
        </div>
    @endforeach
@else
    <p>Le panier est vide.</p>
@endif
<form action="{{ URL::to('checkout') }}">
    <input type="text" name="fullname" placeholder="fullname">
    <input type="text" name="phone" placeholder="phone">
    <input type="text" name="adress" placeholder="adress">
    <input type="submit" name="checkout" value="Proceed to checkout">
</form>
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
