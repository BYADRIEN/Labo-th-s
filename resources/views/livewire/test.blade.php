<div>
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
                    <img src="{{ asset('storage/' . $post->img) }}" class="img-fluid" alt="{{ $post->title }}">
                    <div class="card-body">
                        <p class="card-title fw-bold">{{ $post->title }}</p>
                        <p class="card-text">{{ $post->price }} €</p>
                        <a class="btn btn-dark" href="{{ route('produit.show', $post->id) }}">Voir l'article</a><br>
                    </div>
                </div>
            </div>
        @empty
            <p>Aucun produit trouvé.</p>
        @endforelse
    </div>
</div>