@extends('welcome')

@section('content')
                <div class="" id="likes">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-danger text-white">
                            <h4 class="mb-0"><i class="bi bi-heart-fill me-2"></i>Likes</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">Aperçu des "likes" sur les produits ici.</p>
                            {{-- Ajoutez ici la logique pour afficher les likes --}}
                            <div class="card shadow-sm mb-4">
    <div class="card-header bg-info text-white">
        <h5 class="mb-0"><i class="bi bi-heart-fill me-2"></i>Produits les plus likés</h5>
    </div>
    <table class="table">
    <thead>
        <tr>
            <th>Produit</th>
            <th>Nombre de Likes</th>
        </tr>
    </thead>
    <tbody>
        @foreach($posts as $post)
            <tr>
                <td>{{ $post->title }}</td>
                <td>{{ $post->likes_count }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
</div>
                        </div>
                    </div>
                </div>
@endsection