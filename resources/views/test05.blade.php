@extends('welcome')

@section('content')
<div id="likes" class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="card-header bg-danger text-white d-flex align-items-center">
            <i class="bi bi-heart-fill me-2 fs-4"></i>
            <h4 class="mb-0">Produits les plus likés</h4>
        </div>
        <div class="card-body">
            <p class="text-muted mb-4">
                Aperçu des produits ayant reçu le plus de likes.
            </p>

            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th>Produit</th>
                            <th class="text-center">Nombre de Likes</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($posts as $post)
                            <tr>
                                <td class="fw-semibold">
                                    <i class="bi bi-box me-1 text-secondary"></i> {{ $post->title }}
                                </td>
                                <td class="text-center">
                                    <span class="badge bg-danger px-3 py-2">
                                        <i class="bi bi-heart-fill me-1"></i> {{ $post->likes_count }}
                                    </span>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="2" class="text-center text-muted">Aucun produit liké pour le moment.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            {{-- Bouton retour aux produits --}}
            <div class="text-end mt-4">
                <a href="{{ route('produits') }}" class="btn btn-secondary">
                    <i class="bi bi-arrow-left-circle me-1"></i> Retour aux produits
                </a>
            </div>
        </div>
    </div>
</div>
@endsection