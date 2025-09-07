@extends('welcome')

@section('content')
<div id="stock" class="container my-5">
    <div class="card shadow-lg border-0">
        {{-- Header --}}
        <div class="card-header bg-success text-white d-flex align-items-center">
            <i class="fa-solid fa-boxes-stacked me-2 fs-4"></i>
            <h4 class="mb-0">Gestion du Stock</h4>
        </div>

        <div class="card-body">
            <p class="text-muted mb-4">
                Suivi en temps réel des stocks de vos thés <i class="fa-solid fa-mug-hot"></i>.
            </p>

            {{-- Tableau sur Desktop --}}
            <div class="d-none d-md-block table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th><i class="fa-solid fa-mug-hot me-1"></i> Produit</th>
                            <th class="text-center"><i class="fa-solid fa-box me-1"></i> Stock</th>
                            <th class="text-center"><i class="fa-solid fa-circle-nodes me-1"></i> Statut</th>
                            <th class="text-center"><i class="fa-solid fa-gear me-1"></i> Action</th>
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
                                            <i class="fa-solid fa-triangle-exclamation me-1"></i> Stock bas
                                        </span>
                                    @else
                                        <span class="badge bg-success px-3 py-2">
                                            <i class="fa-solid fa-circle-check me-1"></i> OK
                                        </span>
                                    @endif
                                </td>
                                <td>
                                    <form action="{{ route('update.stock', $post->id) }}" method="POST" class="d-flex justify-content-center align-items-center gap-2">
                                        @csrf
                                        @method('PUT')
                                        <input type="number" name="stock" value="{{ $post->stock }}" min="0" class="form-control form-control-sm w-50 text-center">
                                        <button type="submit" class="btn btn-sm btn-outline-success d-flex align-items-center">
                                            <i class="fa-solid fa-pen-to-square me-1"></i> Modifier
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="text-center text-muted">
                                    <i class="fa-solid fa-face-frown me-1"></i> Aucun produit trouvé.
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            {{-- Version Mobile en cartes --}}
            <div class="d-md-none">
                @forelse($posts as $post)
                    <div class="card mb-3 shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold text-success">
                                <i class="fa-solid fa-mug-hot me-1"></i> {{ $post->title }}
                            </h5>
                            <p class="mb-1"><i class="fa-solid fa-box me-1"></i> <strong>Stock :</strong> {{ $post->stock }}</p>
                            <p class="mb-2">
                                @if($post->stock < 2)
                                    <span class="badge bg-danger">
                                        <i class="fa-solid fa-triangle-exclamation me-1"></i> Stock bas
                                    </span>
                                @else
                                    <span class="badge bg-success">
                                        <i class="fa-solid fa-circle-check me-1"></i> OK
                                    </span>
                                @endif
                            </p>
                            <form action="{{ route('update.stock', $post->id) }}" method="POST" class="d-flex gap-2">
                                @csrf
                                @method('PUT')
                                <input type="number" name="stock" value="{{ $post->stock }}" min="0" class="form-control form-control-sm text-center">
                                <button type="submit" class="btn btn-sm btn-outline-success d-flex align-items-center">
                                    <i class="fa-solid fa-pen-to-square me-1"></i> Modifier
                                </button>
                            </form>
                        </div>
                    </div>
                @empty
                    <p class="text-center text-muted">
                        <i class="fa-solid fa-face-frown me-1"></i> Aucun produit trouvé.
                    </p>
                @endforelse
            </div>

            {{-- Bouton retour --}}
            <div class="text-end mt-4">
                <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary d-flex align-items-center justify-content-center">
                    <i class="fa-solid fa-circle-left me-1"></i> Retour à la dashboard
                </a>
            </div>
        </div>
    </div>
</div>
@endsection