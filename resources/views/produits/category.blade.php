@extends('welcome')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            {{-- Titre de la page --}}
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="mb-0">Ajouter une catégorie</h2>
                <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary">
                    ← Retour aux produits
                </a>
            </div>

            {{-- Formulaire --}}
            <div class="card shadow-sm">
                <div class="card-body">
                    <form action="{{ url('add_category') }}" method="POST">
                        @csrf

                        <div class="mb-3">
                            <label for="category" class="form-label">Nom de la catégorie</label>
                            <input type="text" class="form-control" id="category" name="category" placeholder="Ex. : Thé vert" required>
                        </div>

                        <button type="submit" class="btn btn-success">Ajouter la catégorie</button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection