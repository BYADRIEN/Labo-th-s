<h1>création du truc</h1>

<form action="{{ url('insert-data') }}" method="POST">
    @csrf
    <input type="text" name="title" placeholder="Titre">
    <textarea name="content" placeholder="Contenu"></textarea>
    <input type="text" name="slug" placeholder="Slug">
    <select name="category_id">
        <!-- Liste des catégories -->
        <option value="1">Catégorie 1</option>
        <option value="2">Catégorie 2</option>
    </select>
    <button type="submit">Ajouter</button>
    <a href="{{ route('produits') }}">Retour</a>
</form>
