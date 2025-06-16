<p>catégroei</p>
<h1>add categorie</h1>
<form action="{{ url('add_category') }}" method="Post">
    @csrf
    <p>Category name</p>
    <input type="text" name="category" required>
    <input type="submit" value="add category">
</form>
