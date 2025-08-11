@extends('welcome')

@section('content')
<div class="container py-4" id="comments" role="tabpanel" aria-labelledby="comments-tab">
    <div class="card shadow border-0">
        <div class="card-header bg-gradient bg-info text-white d-flex justify-content-between align-items-center">
            <h4 class="mb-0">
                <i class="bi bi-chat-dots-fill me-2"></i> Gestion des commentaires
            </h4>
        </div>

        <div class="card-body">
            @if($comments->count())
                <div class="list-group list-group-flush">
                    @foreach($comments as $comment)
                        <div class="list-group-item py-4">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <small class="text-muted">
                                        Posté le {{ $comment->created_at->format('d/m/Y à H:i') }}
                                    </small>
                                    <h5 class="mt-1 mb-2">
                                        Produit :
                                        <span class="text-primary fw-semibold">
                                            {{ $comment->post->title ?? 'Produit supprimé' }}
                                        </span>
                                    </h5>
                                    <p class="mb-1">
                                        <strong>Auteur :</strong>
                                        {{ $comment->client->nom ?? 'Anonyme' }}
                                        {{ $comment->client->prenom ?? '' }}
                                    </p>
                                    <p class="text-secondary fst-italic mb-0">{{ $comment->body }}</p>
                                </div>
                                <div class="d-flex flex-column gap-2">
                                    @if ($comment->post)
                                        <a href="{{ route('comment.edit', $comment->id) }}" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil"></i> Éditer
                                        </a>
                                    @endif
                                    <form action="{{ route('comment.delete', $comment->id) }}" method="POST" onsubmit="return confirm('Supprimer ce commentaire ?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash"></i> Supprimer
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <p class="text-center text-muted my-4">
                    <i class="bi bi-inbox fs-3 d-block mb-2"></i>
                    Aucun commentaire trouvé.
                </p>
            @endif
        </div>
    </div>
</div>
@endsection