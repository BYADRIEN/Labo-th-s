@extends('welcome')

@section('content')
<div id="stock" class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="card-header bg-warning text-dark d-flex align-items-center">
            <i class="bi bi-box-seam-fill me-2 fs-4"></i>
            <h4 class="mb-0">Gestion du Stock</h4>
        </div>
        <div class="card-body">
            <p class="text-muted mb-4">
                Suivi en temps réel de l’état des stocks.
            </p>

            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th>Produit</th>
                            <th class="text-center">Stock</th>
                            <th class="text-center">Statut</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($posts as $post)
                            <tr>
                                <td class="fw-semibold">{{ $post->title }}</td>
                                <td class="text-center">{{ $post->stock }}</td>
                                <td class="text-center">
                                    @if($post->stock < 2)
                                        <span class="badge bg-danger px-3 py-2">
                                            <i class="bi bi-exclamation-triangle-fill me-1"></i> Stock bas
                                        </span>
                                    @else
                                        <span class="badge bg-success px-3 py-2">
                                            <i class="bi bi-check-circle-fill me-1"></i> OK
                                        </span>
                                    @endif
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="3" class="text-center text-muted">Aucun produit trouvé.</td>
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