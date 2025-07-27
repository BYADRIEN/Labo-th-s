

 @extends('welcome')

@section('content')
<div class="container py-5 text-dark"> {{-- Ajout d'un conteneur pour centrer et espacer --}}
    <h1 class="mb-4">Création du produit</h1> {{-- Titre avec marge en bas --}}

    {{-- Le formulaire principal pour créer un produit et uploader son image --}}
    <form action="{{ url('insert-data') }}" method="POST" enctype="multipart/form-data" class="bg-light p-4 rounded shadow-sm">
        @csrf

        {{-- Champ Titre --}}
        <div class="mb-3"> {{-- Marge en bas pour espacer les champs --}}
            <label for="title" class="form-label">Titre du produit</label>
            <input type="text" name="title" id="title" class="form-control" placeholder="Titre" required>
            @error('title') <div class="text-danger">{{ $message }}</div> @enderror {{-- Affichage des erreurs --}}
        </div>

        {{-- Champ Contenu/Description --}}
        <div class="mb-3">
            <label for="content" class="form-label">Description</label>
            <textarea name="content" id="content" class="form-control" rows="4" placeholder="Description du produit"></textarea>
            @error('content') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Stock --}}
        <div class="mb-3">
            <label for="stock" class="form-label">Stock</label>
            <input type="number" name="stock" id="stock" class="form-control" placeholder="Quantité en stock" required min="0">
            @error('stock') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Prix --}}
        <div class="mb-3">
            <label for="price" class="form-label">Prix (€)</label>
            <input type="number" name="price" id="price" class="form-control" step="0.01" placeholder="Prix" required min="0">
            @error('price') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Image (FileUpload) --}}
        <div class="mb-3">
            <label for="img" class="form-label">Image du produit</label>
            <input type="file" name="img" id="img" class="form-control" required accept="image/*"> {{-- 'accept="image/*"' pour n'afficher que les images --}}
            @error('img') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Poids --}}
        <div class="mb-3">
            <label for="poids" class="form-label">Poids (g)</label>
            <input type="number" name="poids" id="poids" class="form-control" placeholder="Poids en grammes" min="0">
            @error('poids') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Montant TVA --}}
        <div class="mb-3">
            <label for="montant_tva" class="form-label">Montant TVA (%)</label>
            <input type="number" name="montant_tva" id="montant_tva" class="form-control" step="0.01" placeholder="Taux de TVA" min="0" max="100">
            @error('montant_tva') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Catégorie --}}
        <div class="mb-3">
            <label for="category_id" class="form-label">Catégorie</label>
            <select name="category_id" id="category_id" class="form-select" required>
                {{-- Idéalement, cette liste doit être générée dynamiquement depuis votre base de données,
                     passée depuis le contrôleur à la vue.
                     Ex: @foreach($categories as $category)
                             <option value="{{ $category->id }}">{{ $category->name }}</option>
                         @endforeach
                --}}
                <option value="">Sélectionnez une catégorie</option>
                <option value="1">Catégorie 1</option>
                <option value="2">Catégorie 2</option>
                <option value="3">Catégorie 3</option>
            </select>
            @error('category_id') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Boutons d'action --}}
        <div class="d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">Ajouter le produit</button>
            <a href="{{ route('produits') }}" class="btn btn-secondary">Retour à la liste</a>
        </div>
    </form>
</div>
@endsection

{{-- ATTENTION : La balise <link> doit être dans le <head> de votre fichier welcome.blade.php ! --}}
{{-- Supprimez-la d'ici si elle s'y trouve actuellement. --}}
<link rel="stylesheet" href="{{ asset('css/style.css') }}">