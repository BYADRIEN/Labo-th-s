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
<p>{{ $post->content }}</p>
<p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p>
<td><h2>Commentaires :</h2>
    <div>
        {{$post->body}}
    </div>
    <form action="{{ url("{$post->path()}/comments") }}" method="POST">
        {{ csrf_field() }}
        <textarea name="body">{{ old('body') }}</textarea>
        <button>commenter</button>
    </form>
    <div class="card">
        @foreach($post->comments as $comment)
            <div>
                <strong>{{ $comment->client->prenom }}</strong>
                - {{ $comment->created_at->diffForHumans() }}
                <p class="p-3 mb-2 bg-primary text-white">{{ $post->category->catname }}</p>
            </div>
            <div class="card-body">
                {{ $comment->body }}
            </div>
        @endforeach
    </div>
</td> <td>
    <livewire:like-button :key="$post->id" :$post/>
</td>
<td>
    {{ $post->poids }}
</td>
<td><p>{{ $post->category->catname }}</p></td>
<td><p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p></td>
<td>
    {{ $post->stock }}
</td>
<td><p>{{ $post->slug }}</p></td>
<td>
    {{ $post->montant_tva }}
</td>
<td>
    <form action="{{ route('wishlist.add', $post->id) }}" method="POST">
        @csrf
        <button type="submit">Ajouter à la wishlist</button>
    </form>
</td>
<td>
    <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="200">
</td>
<a class="text-danger" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier (0)</a>
{{ $post->title }}
{{ $post->price }}
<a href="{{ route('home') }}">Retour à la liste des posts</a>
</body>
</html>
