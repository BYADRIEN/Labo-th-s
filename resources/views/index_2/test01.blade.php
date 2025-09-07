@extends('welcome')

@section('content')
<div id="posts" class="container my-5">
    <div class="bg-white rounded-4 shadow-lg p-4">
        
        {{-- Header --}}
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="fw-bold text-success m-0">
                <i class="fas fa-seedling me-2"></i> Gestion des Produits
            </h3>
            <a href="{{ route('produits.create') }}" 
               class="btn btn-success rounded-pill px-4 shadow-sm">
                <i class="fas fa-plus me-2"></i> Nouveau Produit
            </a>
        </div>

        {{-- Body --}}
        @if($posts->isEmpty())
            <div class="alert alert-light border text-center p-4 rounded-3 shadow-sm">
                <i class="fas fa-info-circle me-2 text-success"></i> Aucun produit trouvé.
            </div>
        @else
            <div class="row g-4">
                @foreach($posts as $post)
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="card border-0 shadow-sm h-100 rounded-4 overflow-hidden product-card">
                            {{-- Image --}}
                            <div class="position-relative">
                                <img src="{{ asset('storage/' . $post->img) }}"
                                     alt="{{ $post->title }}"
                                     class="w-100"
                                     style="height: 220px; object-fit: cover;">
                                
                                {{-- Badge stock --}}
                                @if($post->stock < 2)
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-2 px-3 py-2 rounded-pill">
                                        <i class="fas fa-exclamation-circle"></i> Rupture
                                    </span>
                                @else
                                    <span class="badge bg-success position-absolute top-0 start-0 m-2 px-3 py-2 rounded-pill">
                                        <i class="fas fa-check"></i> En stock
                                    </span>
                                @endif
                            </div>

                            {{-- Infos produit --}}
                            <div class="card-body d-flex flex-column">
                                <h5 class="fw-bold text-dark">
                                    <i class="fas fa-mug-hot text-success me-1"></i> {{ $post->title }}
                                </h5>

                                <p class="text-muted small">ID: {{ $post->id }}</p>

                                {{-- Actions --}}
                                <div class="mt-auto d-flex justify-content-between gap-2">
                                    <a href="{{ url('edit/' . $post->id) }}" 
                                       class="btn btn-outline-success btn-sm rounded-pill flex-grow-1">
                                        <i class="fas fa-pen me-1"></i> Modifier
                                    </a>
                                    <form action="{{ url('delete/' . $post->id) }}" method="POST" class="flex-grow-1">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" 
                                                class="btn btn-outline-danger btn-sm rounded-pill w-100"
                                                onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?');">
                                            <i class="fas fa-trash me-1"></i> Supprimer
                                        </button>
                                    </form>
                                </div>

                                {{-- Livewire bouton --}}
                                <div class="mt-3">
                                    <livewire:buttons.featured :post="$post" :name="'featured'" :key="'featured'.$post->id"/>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif

        {{-- Footer --}}
        <div class="text-end mt-4">
            <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary rounded-pill shadow-sm">
                <i class="fas fa-arrow-left me-2"></i> Retour à la Dashboard
            </a>
        </div>
    </div>
</div>

{{-- Effet hover CSS --}}
<style>
.product-card img {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.product-card:hover img {
    transform: scale(1.05);
}
</style>
@endsection