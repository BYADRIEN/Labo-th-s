<p>checkout ;)</p>
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
<p>payement en click and collect</p>
