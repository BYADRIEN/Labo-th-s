<h1> detail du produit </h1>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $post->title }}</title>
</head>
<body>
<h1>{{ $post->title }}</h1>
<p>{{ $post->description }}</p>
<p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p>

<a href="{{ route('home') }}">Retour à la liste des posts</a>
</body>
</html>
