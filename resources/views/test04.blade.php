@extends('welcome')

@section('content')
<div class="" id="stock">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-warning text-dark">
                            <h4 class="mb-0"><i class="bi bi-box-seam-fill me-2"></i>Gestion du Stock</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">Tableau de bord de gestion du stock.</p>
                            {{-- Ajoutez ici la logique pour le stock --}}
<div class="card shadow-sm mb-4">
    <div class="card-header bg-warning text-dark">
        <h5 class="mb-0"><i class="bi bi-box-seam me-2"></i>Gestion de stock</h5>
    </div>
    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Produit</th>
                    <th>Stock</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                    @foreach($posts as $post)
                    <tr>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->stock }}</td>
                        <td>
                            @if($post->stock < 2)
                                <span class="badge bg-danger">Stock bas</span>
                            @else
                                <span class="badge bg-success">OK</span>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
                        </div>
                    </div>
                </div>
@endsection