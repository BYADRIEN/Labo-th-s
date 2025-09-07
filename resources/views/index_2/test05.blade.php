@extends('welcome')

@section('content')
<div id="likes" class="container my-5">
    <div class="card shadow-lg border-0 rounded-4">

        {{-- Header --}}
        <div class="card-header bg-gradient bg-danger text-white d-flex align-items-center rounded-top-4">
            <i class="fas fa-heart me-2 fs-4"></i>
            <h4 class="mb-0">Produits les plus likés</h4>
        </div>

        {{-- Body --}}
        <div class="card-body">
            <p class="text-muted mb-4">
                Aperçu des produits ayant reçu le plus de likes ❤️
            </p>

            @if($posts->isEmpty())
                <div class="alert alert-light border text-center p-4 rounded-3 shadow-sm">
                    <i class="fas fa-info-circle me-2 text-danger"></i> Aucun produit liké pour le moment.
                </div>
            @else
                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead class="table-danger text-white">
                            <tr>
                                <th><i class="fas fa-box me-1"></i> Produit</th>
                                <th class="text-center"><i class="fas fa-heart me-1"></i> Nombre de Likes</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($posts as $post)
                                <tr>
                                    <td class="fw-semibold">
                                        <i class="fas fa-box-open me-1 text-secondary"></i> {{ $post->title }}
                                    </td>
                                    <td class="text-center">
                                        <span class="badge bg-danger px-3 py-2 rounded-pill">
                                            <i class="fas fa-heart me-1"></i> {{ $post->likes_count }}
                                        </span>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endif

            {{-- Bouton retour --}}
            <div class="text-end mt-4">
                <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary rounded-pill shadow-sm">
                    <i class="fas fa-arrow-left me-1"></i> Retour à la dashboard
</a>
            </div>
        </div>
    </div>
</div>
@endsection