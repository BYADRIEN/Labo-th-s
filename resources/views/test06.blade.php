@extends('welcome')

@section('content')
<div class="" id="categories">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                            <h4 class="mb-0"><i class="bi bi-tags-fill me-2"></i>Gestion des catégories</h4>
                            <a href="{{ url('category_page') }}" class="btn btn-sm btn-light rounded-pill px-3">
                                <i class="bi bi-folder-plus me-2"></i>Ajouter une catégorie
                            </a>
                        </div>
                        <div class="card-body">
                            <h2>Liste des catégories</h2>

                            @if($categories->isEmpty())
                                <p class="text-muted">Aucune catégorie trouvée.</p>
                            @else
                                <table class="table table-striped table-hover align-middle">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nom de la catégorie</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($categories as $category)
                                            <tr>
                                                <td>{{ $category->id }}</td>
                                                <td>{{ $category->catname }}</td>
                                                <td>
                                                    <a href="{{ route('categories.edit', $category->id) }}" class="btn btn-sm btn-outline-warning me-2">
                                                        <i class="bi bi-pencil-square"></i> Editer
                                                    </a>
                                                    <form action="{{ route('categories.delete', $category->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Voulez-vous vraiment supprimer cette catégorie ?');">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger">
                                                            <i class="bi bi-trash"></i> Supprimer
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            @endif
                        </div>
                    </div>
                </div>

            </div> {{-- fin tab-content --}}
        </div> {{-- fin col-md-9 --}}
    </div> {{-- fin row g-4 --}}
@endsection
