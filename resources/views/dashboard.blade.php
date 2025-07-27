@extends('welcome')

@section('content')
<div class="container py-5">
    <div class="text-center mb-5">
    <h1 class="display-4 text-dark mb-3">📊 Tableau de bord Administrateur</h1> {{-- Titre plus grand --}}

    {{-- Section d'authentification --}}
    @auth('client')
        <div class="alert alert-success d-inline-flex align-items-center p-2 mb-3 rounded-pill shadow-sm">
            <i class="bi bi-person-fill me-2"></i>
            Connecté en tant que <strong>{{ auth('client')->user()->nom }} {{ auth('client')->user()->prenom }}</strong>
        </div>

        {{-- Le badge Admin reste conditionnel --}}
        @if(Auth::guard('client')->user()->hasRole('admin'))
            <span class="badge bg-primary fs-6 py-2 px-3 rounded-pill me-3">👑 Admin</span>
        @endif

        {{-- Le bouton de déconnexion est maintenant visible pour TOUS les utilisateurs authentifiés --}}
        <form method="POST" action="{{ route('logout') }}" class="d-inline">
            @csrf
            <button type="submit" class="btn btn-outline-danger btn-sm rounded-pill px-3">🔓 Se déconnecter</button>
        </form>

    @else
        <div class="alert alert-warning d-inline-flex align-items-center p-2 rounded-pill shadow-sm">
             <i class="bi bi-exclamation-triangle-fill me-2"></i>
            Vous n'êtes pas connecté.
        </div>
    @endauth
</div>

    ---

    {{-- Liens rapides --}}
    <div class="row mb-5 justify-content-center">
        <div class="col-12 text-center mb-4">
            <h3 class="text-muted">Accès Rapide</h3>
        </div>
        <div class="col-md-10 d-flex flex-wrap gap-3 justify-content-center">
            <a href="{{ route('profile.password') }}" class="btn btn-outline-dark btn-lg shadow-sm rounded-pill"><i class="bi bi-key-fill me-2"></i>Modifier mot de passe</a>
            <a href="{{ route('profile.edit') }}" class="btn btn-outline-dark btn-lg shadow-sm rounded-pill"><i class="bi bi-person-circle me-2"></i>Modifier profil</a>
            <a href="{{ route('commandes') }}" class="btn btn-outline-warning btn-lg shadow-sm rounded-pill"><i class="bi bi-box-seam me-2"></i>Mes commandes</a>
        </div>
    </div>

    ---

    {{-- Tableau de bord avec onglets --}}
    <div class="row g-4"> {{-- Utilisation de g-4 pour l'espacement entre colonnes/cartes --}}
        <div class="col-md-3">
            <div class="card shadow-sm border-0">
                <div class="card-header bg-primary text-white text-center">
                    <h5 class="mb-0">Navigation</h5>
                </div>
                <div class="card-body p-0">
                    <div class="nav flex-column nav-pills" id="dashboard-tab" role="tablist">
                        <button class="nav-link active rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#posts"><i class="bi bi-box me-3"></i> Produits</button>
                        <button class="nav-link rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#comments"><i class="bi bi-chat-text me-3"></i> Commentaires</button>
                        <button class="nav-link rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#likes"><i class="bi bi-heart me-3"></i> Likes</button>
                        <button class="nav-link rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#client"><i class="bi bi-people me-3"></i> Informations client</button>
                        <button class="nav-link rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#users"><i class="bi bi-person-fill me-3"></i> Utilisateurs Système</button>
                        <button class="nav-link rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#stock"><i class="bi bi-bar-chart me-3"></i> Stock</button>
<button class="nav-link rounded-0 text-start py-3 ps-4" data-bs-toggle="pill" data-bs-target="#categories"><i class="bi bi-folder2-open me-3"></i>Mes catégories</button>                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-9">
            <div class="tab-content">
                {{-- Produits --}}
                <div class="tab-pane fade show active" id="posts">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                            <h4 class="mb-0"><i class="bi bi-tags-fill me-2"></i>Gestion des Produits</h4>
                            <a href="{{ route('produits.create') }}" class="btn btn-sm btn-light rounded-pill px-3"><i class="bi bi-plus-circle me-2"></i>Ajouter un produit</a>
                        </div>
                        <div class="card-body">
                            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4"> {{-- Ajout de row-cols-lg-3 --}}
                                @foreach($posts as $post)
                                    <div class="col">
                                        <div class="card h-100 shadow-sm border-light">
                                            <img src="{{ asset('storage/' . $post->img) }}" class="card-img-top" alt="{{ $post->title }}" style="height: 180px; object-fit: cover;">
                                            <div class="card-body d-flex flex-column">
                                                <h5 class="card-title text-primary">{{ $post->title }}</h5>
                                                <div class="mt-3">
                                                    <a href="{{ url('edit/' . $post->id) }}" class="btn btn-sm btn-outline-warning rounded-pill me-2"><i class="bi bi-pencil-square"></i> Modifier</a>
                                                    {{-- Formulaire de suppression recommandé --}}
                                                    <form action="{{ url('delete/' . $post->id) }}" method="POST" class="d-inline"> {{-- Remplacez par route('produits.destroy', $post->id) --}}
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger rounded-pill" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?');"><i class="bi bi-trash"></i> Supprimer</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Commentaires --}}
                <div class="tab-pane fade" id="comments">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-info text-white">
                            <h4 class="mb-0"><i class="bi bi-chat-dots-fill me-2"></i>Commentaires</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">Liste des commentaires en attente ou récents ici.</p>
                            {{-- Ajoutez ici la logique pour afficher les commentaires --}}
                        </div>
                    </div>
                </div>

                {{-- Likes --}}
                <div class="tab-pane fade" id="likes">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-danger text-white">
                            <h4 class="mb-0"><i class="bi bi-heart-fill me-2"></i>Likes</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">Aperçu des "likes" sur les produits ici.</p>
                            {{-- Ajoutez ici la logique pour afficher les likes --}}
                        </div>
                    </div>
                </div>

                {{-- Clients --}}
                <div class="tab-pane fade" id="client">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-primary text-white">
                            <h4 class="mb-0"><i class="bi bi-people-fill me-2"></i>Informations Client</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">Détails de l'utilisateur ou liste des clients.</p>
                            <a href="{{ route('users.index') }}" class="btn btn-outline-dark rounded-pill"><i class="bi bi-person-lines-fill me-2"></i>Voir tous les utilisateurs</a>
                        </div>
                    </div>
                </div>

                {{-- Users (système) --}}
                <div class="tab-pane fade" id="users">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-secondary text-white">
                            <h4 class="mb-0"><i class="bi bi-person-badge-fill me-2"></i>Utilisateurs du Système</h4>
                        </div>
                        <div class="card-body">
                             @role('admin')
            <a href="{{ route('roles.index') }}" class="btn btn-outline-primary btn-lg shadow-sm rounded-pill"><i class="bi bi-people-fill me-2"></i>Rôles</a>
              @endrole
               @role('admin')
            <a href="{{ route('permissions.index') }}" class="btn btn-outline-primary btn-lg shadow-sm rounded-pill"><i class="bi bi-lock-fill me-2"></i>Permissions</a>
             @endrole
                            <p class="text-muted">Gestion des utilisateurs du tableau de bord (admins, modérateurs, etc.).</p>
                            {{-- Ajoutez ici la logique pour gérer les utilisateurs --}}
                        </div>
                    </div>
                </div>

                {{-- Stock --}}
                <div class="tab-pane fade" id="stock">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-warning text-dark">
                            <h4 class="mb-0"><i class="bi bi-box-seam-fill me-2"></i>Gestion du Stock</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">Tableau de bord de gestion du stock.</p>
                            {{-- Ajoutez ici la logique pour le stock --}}
                        </div>
                    </div>
                </div>
                {{--  mes catégories --}}
                <div class="tab-pane fade" id="categories">
                    <div class="card shadow-sm border-0">
                        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                            <h4 class="mb-0"><i class="bi bi-tags-fill me-2"></i>Gestion des catégories</h4>
                            <a href="{{ url('category_page') }}" class="btn btn-sm btn-light rounded-pill px-3"><i class="bi bi-folder-plus me-2"></i>Ajouter une catégorie</a>
                        </div>
                        <div class="card-body">
                        <h2>Liste des catégories</h2>
    @foreach ($categories as $category)
        {{ $category->catname }}</>
    @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    ---

    {{-- 2FA Toggle --}}
    @auth
    <div class="card mt-5 shadow-lg border-0">
        <div class="card-header bg-dark text-white">
            <h5 class="mb-0"><i class="bi bi-shield-lock-fill me-2"></i>Authentification à deux facteurs</h5>
        </div>
        <div class="card-body">
            <form method="POST" action="/user/two-factor-authentication">
                @csrf
                @if(auth()->user()->two_factor_secret)
                    @method('DELETE')
                    <div class="mb-3 text-center">
                        <p class="text-muted">Scannez ce code QR avec votre application d'authentification.</p>
                        {!! auth()->user()->twoFactorQrCodeSvg() !!}
                        <div class="mt-3">
                            <h6 class="text-primary">Codes de récupération :</h6>
                            <ul class="list-unstyled d-inline-block text-start">
                                @foreach (json_decode(decrypt(auth()->user()->two_factor_recovery_codes), true) as $code)
                                    <li><code>{{ $code }}</code></li>
                                @endforeach
                            </ul>
                            <p class="text-danger small">Gardez ces codes en lieu sûr !</p>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-danger btn-lg rounded-pill"><i class="bi bi-toggle-off me-2"></i>Désactiver 2FA</button>
                @else
                    <p class="text-muted">Activez l'authentification à deux facteurs pour une sécurité renforcée de votre compte.</p>
                    <button type="submit" class="btn btn-primary btn-lg rounded-pill"><i class="bi bi-toggle-on me-2"></i>Activer 2FA</button>
                @endif
            </form>
        </div>
    </div>
    @endauth
</div>
@endsection