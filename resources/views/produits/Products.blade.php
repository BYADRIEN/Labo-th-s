@extends('welcome')
@extends('components.header')
@section('content')
    <h1>Liste de produits</h1>
    @foreach($posts as $post)
        <p>{{ $post->title }}</p>
        <a href="{{ url('edit/' . $post->id) }}">Modifier</a>
        <p>{{ $post->content }}</p>
        <p>{{ $post->slug }}</p>
        <p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p>
        <p class="p-3 mb-2 bg-primary text-white">{{ $post->category->catname }}</p>
        <h2>Commentaires :</h2>
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
                    <strong>{{ $comment->client->prenom }}</strong> - {{ $comment->created_at->diffForHumans() }}
                    <p class="p-3 mb-2 bg-primary text-white">{{ $post->category->catname }}</p>
                </div>
                <div class="card-body">
                    {{ $comment->body }}
                </div>
            @endforeach
        </div>
    @endforeach
@endsection
@section('footer')
    @include('components.footer')
@endsection
