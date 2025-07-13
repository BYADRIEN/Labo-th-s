<h1>edit</h1>
<form action="{{ route('produits.update',['id' => $id ]) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <input class="form-control form-control-lg" type="text"  name="title" placeholder="Titre">
    <input class="form-control" type="text" name="content" placeholder="Contenu">
    <input class="form-control form-control-sm" type="text" placeholder="stock" name="stock">
    <input class="form-control form-control-sm" type="text" placeholder="price" name="price">
    <input type="text" name="poids" placeholder="poids">
    <input type="text" name="montant_tva" placeholder="montant_tva">
    <button type="submit">modifier</button>
    <select name="category_id">
        <!-- Liste des catégories -->
        <option value="1">Catégorie 1</option>
        <option value="2">Catégorie 2</option>
        <option value="3">Catégorie 3</option>
    </select>
    <div>
        <p>photo</p>
        <input type="file" name="img">
    </div>
</form>
