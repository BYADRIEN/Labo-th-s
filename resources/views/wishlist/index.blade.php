

@foreach($items as $item)
    <div>
        <h2>{{ $item->title }}</h2> {{-- Vérifie que la colonne product_name existe dans la table post --}}
        <form action="{{ route('wishlist.remove', $item->id) }}" method="POST">
            @csrf
            <button type="submit">Retirer de la wishlist</button>
        </form>
    </div>
    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if (session('info'))
        <div class="alert alert-info">
            {{ session('info') }}
        </div>
    @endif
@endforeach
<a href="{{ route('produits') }}">retour</a>
