<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
    @forelse($posts as $post)
        <div class="col">
            <div class="card h-100 shadow-sm border-0 d-flex flex-column">
                <img src="{{ asset('storage/' . $post->img) }}" class="img-fluid" alt="{{ $post->title }}">
                <p>{{ $post->title }}</p>
                <p>{{ $post->price }} €</p>
                <a class="text-success" href="{{ route('produit.show', $post->id) }}">Voir l'article</a>
                <a class="text-danger" href="{{ route('addbook.to.cart', $post->id) }}">Ajouter au panier</a>
            </div>
        </div>
    @empty
        <p>Aucun produit trouvé.</p>
    @endforelse
</div>