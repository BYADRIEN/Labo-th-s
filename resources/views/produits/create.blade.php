<h1>création du truc</h1>

<form action="{{ url('insert-data') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="text" name="title" placeholder="Titre">
    <textarea name="content" placeholder="Contenu"></textarea>
    <!--<input type="text" name="slug" placeholder="Slug"> -->
    <input type="text" name="stock" placeholder="stock">
    <input type="text" name="price" placeholder="price">
    <input type="file" name="img" required>
    <input type="text" name="poids" placeholder="poids">
    <input type="text" name="montant_tva" placeholder="montant_tva">
    <select name="category_id">
        <!-- Liste des catégories -->
        <option value="1">Catégorie 1</option>
        <option value="2">Catégorie 2</option>
        <option value="3">Catégorie 3</option>
    </select>
    <button type="submit">Ajouter</button>
    <a href="{{ route('produits') }}">Retour</a>
</form>
<form action="{{ route('file.upload') }}" method="post" enctype="multipart/form-data">
@csrf
    <label for="image">Choose label</label>
    <input type="file" name="img" required>
    <button type="submit">Upload</button>
</form>
