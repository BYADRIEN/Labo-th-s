@extends('welcome')

@section('content')
<div class="container py-5 text-dark">
    <h1 class="mb-4">Création du produit</h1>

    <form action="{{ url('insert-data') }}" method="POST" enctype="multipart/form-data" class="bg-light p-4 rounded shadow-sm">
        @csrf

        {{-- Titre --}}
        <div class="mb-3">
            <label for="title" class="form-label">Titre du produit</label>
            <input type="text" name="title" id="title" class="form-control" placeholder="Titre" required>
            @error('title') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Description --}}
        <div class="mb-3">
            <label for="content" class="form-label">Description</label>
            <textarea name="content" id="content" class="form-control" rows="4" placeholder="Description du produit"></textarea>
            @error('content') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Stock --}}
        <div class="mb-3">
            <label for="stock" class="form-label">Stock</label>
            <input type="number" name="stock" id="stock" class="form-control" placeholder="Quantité en stock" required min="0">
            @error('stock') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Prix --}}
        <div class="mb-3">
            <label for="price" class="form-label">Prix (€)</label>
            <input type="number" name="price" id="price" class="form-control" step="0.01" placeholder="Prix" required min="0">
            @error('price') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Image --}}
        <div class="mb-3">
            <label for="img" class="form-label">Image du produit</label>
            <input type="file" name="img" id="img" class="form-control" required accept="image/*">
            @error('img') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Poids --}}
        <div class="mb-3">
            <label for="poids" class="form-label">Poids (g)</label>
            <input type="number" name="poids" id="poids" class="form-control" placeholder="Poids en grammes" min="0">
            @error('poids') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Catégorie --}}
        <div class="mb-3">
            <label for="category_id" class="form-label">Catégorie</label>
            <select name="category_id" id="category_id" class="form-select" required>
                <option value="">Sélectionnez une catégorie</option>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->catname }}</option>
                @endforeach
            </select>
            @error('category_id') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Boutons --}}
        <div class="d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">Ajouter le produit</button>
            <a href="{{ route('produits') }}" class="btn btn-secondary">Retour à la liste</a>
        </div>
    </form>
</div>
@endsection