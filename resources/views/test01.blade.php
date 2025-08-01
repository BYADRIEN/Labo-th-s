 @extends('welcome')
 @section('content')
 <div class="col-md-9">
            <div class="tab-content">
                {{-- Produits --}}
                <div class="" id="posts">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                            <h4 class="mb-0"><i class="bi bi-tags-fill me-2"></i>Gestion des Produits</h4>
                            <a href="{{ route('produits.create') }}" class="btn btn-sm btn-light rounded-pill px-3">
                                <i class="bi bi-plus-circle me-2"></i>Ajouter un produit
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
                                @foreach($posts as $post)
                                    <div class="col">
                                        <div class="card h-100 shadow-sm border-light">
                                            <img src="{{ asset('storage/' . $post->img) }}" class="card-img-top" alt="{{ $post->title }}" style="height: 180px; object-fit: cover;">
                                            <div class="card-body d-flex flex-column">
                                                <h5 class="card-title text-primary">{{ $post->title }}</h5>
                                                <div class="mt-3">
                                                    <a href="{{ url('edit/' . $post->id) }}" class="btn btn-sm btn-outline-warning rounded-pill me-2">
                                                        <i class="bi bi-pencil-square"></i> Modifier
                                                    </a>
                                                    <form action="{{ url('delete/' . $post->id) }}" method="POST" class="d-inline">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger rounded-pill" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?');">
                                                            <i class="bi bi-trash"></i> Supprimer
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
@endsection