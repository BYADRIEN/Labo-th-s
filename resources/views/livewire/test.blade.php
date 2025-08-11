<div>
    <style>
        /* Pour les images de produits */
.product-img {
    height: 200px;      /* Définit une hauteur fixe pour toutes les images */
    width: 100%;        /* Prend toute la largeur disponible */
    object-fit: cover;  /* Recadre l'image pour couvrir la zone sans la déformer */
    display: block;     /* S'assure que les marges fonctionnent correctement */
    margin-bottom: 1rem; /* Ajoute un petit espace en dessous de l'image */
}

/* Pour aider à la cohérence de la carte entière (optionnel mais recommandé) */
.card {
    height: 100%;       /* Assure que toutes les cartes ont la même hauteur dans la grille */
    display: flex;
    flex-direction: column;
}

.card-body {
    flex-grow: 1;       /* Permet au corps de la carte de prendre l'espace restant */
    display: flex;
    flex-direction: column;
    justify-content: space-between; /* Aide à aligner le contenu (titre, prix, bouton) */
}

.card-body .btn {
    margin-top: auto;   /* Pousse le bouton vers le bas de la carte */
}
    </style>
    {{-- Filtres --}}
    <div class="d-flex flex-wrap justify-content-between align-items-end mb-4 gap-2">
        <div class="flex-grow-1" style="min-width: 200px;">
            <select wire:model="categoryId" class="form-select">
                <option value="">Toutes les catégories</option>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->catname }}</option>
                @endforeach
            </select>
        </div>

        <div class="flex-grow-1" style="min-width: 200px;">
            <input type="text" wire:model.debounce.300ms="query" class="form-control" placeholder="Rechercher un produit...">
        </div>

        <div>
            <button wire:click="increment" class="btn btn-dark">Filtrer</button>
        </div>
    </div>

    {{-- Produits --}}
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        @forelse($posts as $post)
            <div class="col">
                <div class="card h-100 shadow-sm border-0 d-flex flex-column">
                  <img src="{{ asset('storage/' . $post->img) }}" class="img-fluid product-img" alt="{{ $post->title }}">
                    <div class="card-body">
                        <p class="card-title fw-bold">{{ $post->title }}</p>
    <p><strong>Prix TTC :</strong> {{ number_format($post->price + $post->montant_tva, 2, ',', ' ') }} €</p>
                        <a class="btn btn-dark" href="{{ route('produit.show', $post->id) }}">Voir l'article</a><br>
                    </div>
                </div>
            </div>
        @empty
            <p>Aucun produit trouvé.</p>
        @endforelse
    </div>
</div>