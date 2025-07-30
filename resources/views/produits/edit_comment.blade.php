@extends('welcome')

@section('content')
    <div class="container">
        <h1>Modifier le commentaire</h1>

        <form action="{{ route('comment.update', $comment->id) }}" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="body" class="form-label">Contenu</label>
                <textarea class="form-control" name="body" id="body" rows="5">{{ $comment->body }}</textarea>
            </div>

            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </form>
    </div>
@endsection