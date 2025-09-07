@extends('welcome')

@section('content')
<div class="container py-4" id="comments" role="tabpanel" aria-labelledby="comments-tab">
    <div class="card shadow-lg border-0 rounded-3">
        <div class="card-header bg-success bg-gradient text-white d-flex justify-content-between align-items-center rounded-top">
            <h4 class="mb-0">
                <i class="fas fa-comments me-2"></i> Gestion des commentaires
            </h4>
        </div>

        <div class="card-body p-0">
            @if($comments->count())
                <div class="list-group list-group-flush">
                    @foreach($comments as $comment)
                        <div class="list-group-item py-4 px-3 d-flex justify-content-between align-items-start flex-wrap">
                            <div class="me-3 flex-grow-1">
                                <small class="text-muted d-block mb-1">
                                    <i class="far fa-clock me-1"></i> Posté le {{ $comment->created_at->format('d/m/Y à H:i') }}
                                </small>
                                <h5 class="mt-1 mb-2">
                                    <i class="fas fa-leaf text-success me-2"></i>
                                    Produit :
                                    <span class="text-success fw-semibold">
                                        {{ $comment->post->title ?? 'Produit supprimé' }}
                                    </span>
                                </h5>
                                <p class="mb-1">
                                    <i class="fas fa-user me-1 text-secondary"></i>
                                    <strong>Auteur :</strong>
                                    {{ $comment->client->nom ?? 'Anonyme' }}
                                    {{ $comment->client->prenom ?? '' }}
                                </p>
                                <p class="text-dark fst-italic mb-0 border-start ps-2">
                                    {{ $comment->body }}
                                </p>
                            </div>

                            <div class="d-flex flex-column gap-2">
                                <form action="{{ route('comment.delete', $comment->id) }}" method="POST" onsubmit="return confirm('Supprimer ce commentaire ?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm btn-outline-danger rounded-pill shadow-sm">
                                        <i class="fas fa-trash-alt"></i> Supprimer
                                    </button>
                                </form>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <div class="text-center text-muted py-5">
                    <i class="fas fa-inbox fa-2x d-block mb-2"></i>
                    <p class="mb-0">Aucun commentaire trouvé.</p>
                </div>
            @endif
        </div>

        {{-- Footer avec retour --}}
        <div class="card-footer text-end bg-light rounded-bottom">
            <a href="{{ route('dashboard') }}" class="btn btn-outline-secondary rounded-pill shadow-sm">
                <i class="fas fa-arrow-left me-1"></i> Retour à la dashboard
            </a>
        </div>
    </div>
</div>
@endsection