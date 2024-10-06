@extends('welcome')
@extends('components.header')
@section('content')
<h1>Liste de produit</h1>
@foreach($posts as $post)
    <p>{{ $post->title }}</p>
    <a href="{{ url('edit/'. $post->id) }}">modifier</a>
    <p>{{ $post->content }}</p>
    <p>{{ $post->slug }}</p>
    <p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p>

    <h2>Commentaires :</h2>
    @if($post->comments && $post->comments->count() > 0)
        <ul>
            @foreach($post->comments as $comment)
                <li>{{ $comment->content }} - {{ $comment->user->name ?? 'Anonyme' }}</li>
            @endforeach
        </ul>
    @else
        <p>Aucun commentaire trouvé.</p>
    @endif

    @if(session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif
@endforeach
@endsection
@section('footer')
    @include('components.footer')
@endsection
