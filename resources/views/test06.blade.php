@extends('welcome')

@section('content')
<div id="categories" class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
            <h4 class="mb-0">
                <i class="bi bi-tags-fill me-2"></i>Gestion des catégories
            </h4>
            <a href="{{ url('category_page') }}" class="btn btn-sm btn-light rounded-pill px-3">
                <i class="bi bi-folder-plus me-2"></i>Ajouter une catégorie
            </a>
        </div>
        <div class="card-body">
            <h5 class="mb-4">Liste des catégories</h5>

            @if($categories->isEmpty())
                <div class="alert alert-info text-center">
                    Aucune catégorie trouvée.
                </div>
            @else
                <div class="table-responsive">
                    <table class="table table-striped table-hover align-middle">
                        <thead class="table-light">
                            <tr>
                                <th>#</th>
                                <th>Nom de la catégorie</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                       <tbody>
    @foreach ($categories as $category)
        <tr>
            <td>{{ $category->id }}</td>
            <td class="fw-semibold">{{ $category->catname }}</td>
            <td>
                <a href="{{ route('categories.edit', $category->id) }}" 
                   class="btn btn-sm btn-warning">
                    Modifier
                </a>
            </td>
        </tr>
    @endforeach
</tbody>
                    </table>
                </div>
            @endif
        </div>
    </div>
</div>
@endsection