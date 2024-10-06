<h1>edit</h1>
<form action="{{ route('produits.update',['id' => $id ]) }}" method="post">
    @csrf
    @method('PUT')
    <input class="form-control form-control-lg" type="text"  name="title">
    <input class="form-control" type="text" placeholder="Default input"  name="content">
    <input class="form-control form-control-sm" type="text" placeholder=".form-control-sm" name="slug">
    <button type="submit">modifier</button>
</form>
