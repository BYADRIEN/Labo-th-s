@extends('welcome')

@section('content')
<div id="posts" class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <i class="bi bi-tags-fill me-2 fs-4"></i>
                <h4 class="mb-0">Gestion des Produits</h4>
            </div>
            <a href="{{ route('produits.create') }}" class="btn btn-light btn-sm rounded-pill px-3">
                <i class="bi bi-plus-circle me-1"></i> Ajouter un produit
            </a>
        </div>
        <div class="card-body">
            @if($posts->isEmpty())
                <div class="alert alert-info text-center">
                    <i class="bi bi-info-circle me-1"></i> Aucun produit trouvé.
                </div>
            @else
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
                    @foreach($posts as $post)
                        <div class="col">
                            <div class="card h-100 shadow-sm border-light">
                                <img src="{{ asset('storage/' . $post->img) }}"
                                     class="card-img-top"
                                     alt="{{ $post->title }}"
                                     style="height: 200px; object-fit: cover; border-top-left-radius: .5rem; border-top-right-radius: .5rem;">
                                <div class="card-body d-flex flex-column">
                                    <h5 class="card-title text-primary fw-semibold">{{ $post->title }}</h5>
                                    <div class="mt-auto d-flex gap-2">
                                        <a href="{{ url('edit/' . $post->id) }}" class="btn btn-warning btn-sm rounded-pill flex-grow-1">
                                            <i class="bi bi-pencil-square me-1"></i> Modifier
                                        </a>
                                        <form action="{{ url('delete/' . $post->id) }}" method="POST" class="flex-grow-1">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm rounded-pill w-100"
                                                    onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?');">
                                                <i class="bi bi-trash me-1"></i> Supprimer
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
        <div class="card-footer text-end">
            <a href="{{ route('produits') }}" class="btn btn-secondary">
                <i class="bi bi-arrow-left-circle me-1"></i> Retour aux produits
            </a>
        </div>
    </div>
</div>
@endsection