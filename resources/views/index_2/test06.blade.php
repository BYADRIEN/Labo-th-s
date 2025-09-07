@extends('welcome')

@section('content')
<div id="categories" class="container my-5">
    <div class="card shadow-lg border-0 rounded-4">

        {{-- Header --}}
        <div class="card-header bg-gradient bg-success text-white d-flex justify-content-between align-items-center rounded-top-4">
            <h4 class="mb-0">
                <i class="fas fa-tags me-2"></i> Gestion des Catégories
            </h4>
            <a href="{{ url('category_page') }}" class="btn btn-light btn-sm rounded-pill px-3 shadow-sm">
                <i class="fas fa-folder-plus me-2"></i> Ajouter une catégorie
            </a>
        </div>

        {{-- Body --}}
        <div class="card-body">
            <h5 class="mb-4 fw-bold text-dark">
                <i class="fas fa-list me-2 text-success"></i> Liste des catégories
            </h5>

            @if($categories->isEmpty())
                <div class="alert alert-light border text-center p-4 rounded-3 shadow-sm">
                    <i class="fas fa-info-circle me-2 text-success"></i> Aucune catégorie trouvée.
                </div>
            @else
                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead class="table-success">
                            <tr>
                                <th><i class="fas fa-hashtag"></i></th>
                                <th><i class="fas fa-tag me-1"></i> Nom de la catégorie</th>
                                <th class="text-center"><i class="fas fa-cogs me-1"></i> Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $category)
                                <tr>
                                    <td>{{ $category->id }}</td>
                                    <td class="fw-semibold">
                                        <i class="fas fa-leaf text-success me-1"></i> 
                                        {{ $category->catname }}
                                    </td>
                                    <td class="text-center">
                                        <a href="{{ route('categories.edit', $category->id) }}" 
                                           class="btn btn-sm btn-warning rounded-pill shadow-sm">
                                            <i class="fas fa-edit me-1"></i> Modifier
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endif
        </div>

        {{-- Footer --}}
        <div class="card-footer text-end bg-light rounded-bottom-4">
            <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary rounded-pill shadow-sm">
                <i class="fas fa-arrow-left me-1"></i> Retour à la dashboard
            </a>
        </div>
    </div>
</div>
@endsection