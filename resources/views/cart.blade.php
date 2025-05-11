<p>ma commande</p>
<pre>{{ print_r(session('cart'), true) }}</pre>
@foreach(session('cart') as $id => $post)
    {{ $post['title'] }}
    {{ $post['price'] }}
    {{ $post['img'] }}
@endforeach
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
@foreach(session('cart') as $id => $post)
    {{ $post['title'] }}
    {{ $post['price'] }}
    {{ $post['img'] }}
@endforeach
<a href="{{ url('checkout') }}">valider la commande ( checkout )</a>
<form action="{{ URL::to('checkout') }}">
    <input type="text" name="fullname" placeholder="fullname">
    <input type="text" name="phone" placeholder="phone">
    <input type="text" name="adress" placeholder="adress">
    <input type="submit" name="checkout" value="Proceed to checkout">
</form>
