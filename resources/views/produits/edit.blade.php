@extends('welcome') {{-- Cela indique que cette vue utilise le layout 'welcome.blade.php' --}}

@section('content')
<div class="container py-5 text-dark"> {{-- Un conteneur Bootstrap pour centrer et espacer le contenu --}}
    <h1 class="mb-4">Éditer le produit</h1> {{-- Titre du formulaire avec une marge en bas --}}

    {{-- Le formulaire d'édition --}}
    <form action="{{ route('produits.update',['id' => $id ]) }}" method="POST" enctype="multipart/form-data" class="bg-light p-4 rounded shadow-sm">
        @csrf {{-- Protection CSRF obligatoire pour les formulaires Laravel --}}
        @method('PUT') {{-- Indique que la requête est une mise à jour (PUT) --}}

        {{-- Champ Titre --}}
        <div class="mb-3"> {{-- 'mb-3' ajoute une marge en bas pour espacer les champs --}}
            <label for="title" class="form-label">Titre</label> {{-- Label pour l'accessibilité --}}
            <input type="text" name="title" id="title" class="form-control form-control-lg" placeholder="Titre" value="{{ old('title', $posts->title ?? '') }}">
            @error('title') <div class="text-danger">{{ $message }}</div> @enderror {{-- Affichage des erreurs de validation --}}
        </div>

        {{-- Champ Contenu --}}
        <div class="mb-3">
            <label for="content" class="form-label">Contenu</label>
            <textarea name="content" id="content" class="form-control" placeholder="Contenu">{{ old('content', $posts->content ?? '') }}</textarea>
            @error('content') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Stock --}}
        <div class="mb-3">
            <label for="stock" class="form-label">Stock</label>
            <input type="number" name="stock" id="stock" class="form-control form-control-sm" placeholder="stock" value="{{ old('stock', $posts->stock ?? '') }}">
            @error('stock') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Prix --}}
        <div class="mb-3">
            <label for="price" class="form-label">Prix (€)</label>
            <input type="number" name="price" id="price" class="form-control form-control-sm" step="0.01" placeholder="price" value="{{ old('price', $posts->price ?? '') }}">
            @error('price') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Poids --}}
        <div class="mb-3">
            <label for="poids" class="form-label">Poids</label>
            <input type="number" name="poids" id="poids" class="form-control" placeholder="poids" value="{{ old('poids', $posts->poids ?? '') }}">
            @error('poids') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Catégorie --}}
        <div class="mb-3">
            <label for="category_id" class="form-label">Catégorie</label>
            <select name="category_id" id="category_id" class="form-select">
                <option value="">Sélectionnez une catégorie</option>
                {{-- Cette liste doit être dynamique. Assurez-vous que votre contrôleur passe une variable $categories --}}
                @if(isset($categories))
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}" {{ old('category_id', $posts->category_id ?? '') == $category->id ? 'selected' : '' }}>
                            {{ $category->catname }} {{-- Utilisez le nom de colonne correct pour votre catégorie --}}
                        </option>
                    @endforeach
                @else
                    {{-- Si $categories n'est pas passé par le contrôleur, affichez ces options statiques --}}
                    <option value="1" {{ old('category_id', $posts->category_id ?? '') == 1 ? 'selected' : '' }}>Catégorie 1</option>
                    <option value="2" {{ old('category_id', $posts->category_id ?? '') == 2 ? 'selected' : '' }}>Catégorie 2</option>
                    <option value="3" {{ old('category_id', $posts->category_id ?? '') == 3 ? 'selected' : '' }}>Catégorie 3</option>
                @endif
            </select>
            @error('category_id') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Champ Image (avec affichage de l'image actuelle) --}}
        <div class="mb-3">
            <label for="img" class="form-label">Photo du produit</label>
            @if(isset($produit->img) && $produit->img)
                <div class="mb-2">
                    <p class="form-text text-muted">Image actuelle :</p>
                    <img src="{{ asset('storage/' . $produit->img) }}" alt="Image actuelle du produit" class="img-thumbnail" style="max-width: 150px;">
                </div>
            @endif
            <input type="file" name="img" id="img" class="form-control" accept="image/*">
            <div class="form-text">Laissez vide pour conserver l'image actuelle.</div>
            @error('img') <div class="text-danger">{{ $message }}</div> @enderror
        </div>

        {{-- Bouton de soumission et de retour --}}
        <div class="d-flex justify-content-start gap-2 mt-4"> {{-- 'gap-2' ajoute un petit espace entre les boutons --}}
            <button type="submit" class="btn btn-primary">Modifier</button>
            <a href="{{ route('produits') }}" class="btn btn-secondary">Annuler</a>
        </div>
    </form>
</div>
@endsection

{{-- ATTENTION : Cette balise <link> est mal placée ici ! --}}
{{-- Elle DOIT être dans la section <head> de votre fichier 'welcome.blade.php'. --}}
{{-- Laissez-la ici seulement si vous avez une raison spécifique et que vous êtes conscient des implications. --}}
<link rel="stylesheet" href="{{ asset('css/style.css') }}">