@extends('welcome')

@section('content')


<div class="" id="comments" role="tabpanel" aria-labelledby="comments-tab">
    <div class="card shadow-sm border-0">
        <div class="card-header bg-info text-white">
            <h4 class="mb-0"><i class="bi bi-chat-dots-fill me-2"></i>Commentaires</h4>
        </div>
        <div class="card-body">
            <p class="text-muted mb-4">Liste des commentaires en attente ou récents ici.</p>

            @forelse($comments as $comment)
                <div class="card mb-3 shadow-sm">
                    <div class="card-body">
                        <h6 class="card-subtitle mb-2 text-muted">
                            Posté le {{ $comment->created_at->format('d/m/Y') }}
                        </h6>
                        <h5 class="card-title">
                            Produit : <span class="text-primary">{{ $comment->post->title ?? 'Produit supprimé' }}</span>
                        </h5>
                        <h6 class="card-subtitle mb-3 text-secondary">
                            Auteur : {{ $comment->client->nom ?? 'Anonyme' }} {{ $comment->client->prenom ?? '' }}
                        </h6>
                        <p class="card-text">{{ $comment->body }}</p>
                    @if ($comment->post)
    <a href="{{ route('comment.edit', $comment->id) }}">edit</a>
@endif
                        <a href="">suprimer</a>
                    </div>
                </div>
            @empty
                <p class="text-center text-muted">Aucun commentaire trouvé.</p>
            @endforelse
        </div>
    </div>
</div>
@endsection