<h1>edit</h1>
<form action="{{ route('produits.update',['id' => $id ]) }}" method="post">
    @csrf
    @method('PUT')
    <input class="form-control form-control-lg" type="text"  name="title" placeholder="Titre">
    <input class="form-control" type="text" name="content" placeholder="Contenu">
    <input class="form-control form-control-sm" type="text" placeholder="slug" name="slug">
    <input class="form-control form-control-sm" type="text" placeholder="stock" name="stock">
    <input class="form-control form-control-sm" type="text" placeholder="price" name="price">
    <button type="submit">modifier</button>
</form>
