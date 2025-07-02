<h2>Liste des catégories</h2>
<ul>
    @foreach ($categories as $category)
        <li>{{ $category->catname }}</li>
    @endforeach
</ul>
