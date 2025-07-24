@extends('welcome')

@section('content')
<div class="container py-5">
    <div class="text-center mb-4">
        <h1 class="tetx-dark">📊 Tableau de bord</h1>
        @auth('client')
            <p class="text-success">
                Connecté en tant que <strong>{{ auth('client')->user()->nom }} {{ auth('client')->user()->prenom }}</strong>
            </p>
            @if(Auth::guard('client')->user()->hasRole('admin'))
                <div class="d-flex justify-content-center align-items-center gap-3">
                    <span class="badge bg-primary">Admin</span>
                    <form method="POST" action="{{ route('logout') }}" class="d-inline">
                        @csrf
                        <button type="submit" class="btn btn-outline-danger btn-sm">🔓 Se déconnecter</button>
                    </form>
                </div>
            @endif
        @else
            <p class="text-danger">Vous n'êtes pas connecté.</p>
        @endauth
    </div>

    {{-- Liens rapides --}}
    <div class="row mb-4">
        <div class="col-md d-flex flex-wrap gap-2 justify-content-center">
            <a href="{{ route('profile.password') }}" class="btn btn-outline-dark">🔑 Modifier mot de passe</a>
            <a href="{{ route('profile.edit') }}" class="btn btn-outline-dark">👤 Modifier profil</a>
            <a href="{{ url('category_page') }}" class="btn btn-outline-dark">📁 Ajouter une catégorie</a>
            <a href="{{ route('roles.index') }}" class="btn btn-outline-primary">👑 Rôles</a>
            <a href="{{ route('permissions.index') }}" class="btn btn-outline-primary">🔐 Permissions</a>
            <a href="{{ route('categories') }}" class="btn btn-outline-success">📂 Voir les catégories</a>
            <a href="{{ route('commandes') }}" class="btn btn-outline-warning">📦 Mes commandes</a>
            @role('admin')
                <a href="{{ route('admin.index') }}" class="btn btn-outline-danger">⚙️ Admin</a>
            @endrole
        </div>
    </div>

    {{-- Tableau de bord avec onglets --}}
    <div class="row">
        <div class="col-md-3">
            <div class="nav flex-column nav-pills" id="dashboard-tab" role="tablist">
                <button class="nav-link active" data-bs-toggle="pill" data-bs-target="#posts">📦 Produits</button>
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#comments">💬 Commentaires</button>
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#likes">❤️ Likes</button>
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#client">👥 Informations client</button>
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#users">🧑‍💻 Users</button>
                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#stock">📊 Stock</button>
            </div>
        </div>

        <div class="col-md-9">
            <div class="tab-content">
                {{-- Produits --}}
                <div class="tab-pane fade show active" id="posts">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4>🛍️ Produits</h4>
                        <a href="{{ route('produits.create') }}" class="btn btn-sm btn-success">+ Ajouter un produit</a>
                    </div>
                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        @foreach($posts as $post)
                            <div class="col">
                                <div class="card h-100 shadow-sm">
                                    <img src="{{ asset('storage/' . $post->img) }}" class="card-img-top" alt="{{ $post->title }}" style="height: 200px; object-fit: cover;">
                                    <div class="card-body">
                                        <h5 class="card-title">{{ $post->title }}</h5>
                                        <p class="card-text">{{ $post->price }} €</p>
                                        <a href="{{ url('edit/' . $post->id) }}" class="btn btn-sm btn-outline-warning">Modifier</a>
                                        <a href="{{ url('delete/' . $post->id) }}" class="btn btn-sm btn-outline-danger">Supprimer</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                {{-- Commentaires --}}
                <div class="tab-pane fade" id="comments">
                    <h4>💬 Commentaires</h4>
                    <p>Contenu des commentaires ici.</p>
                </div>

                {{-- Likes --}}
                <div class="tab-pane fade" id="likes">
                    <h4>❤️ Likes</h4>
                    <p>Contenu des likes ici.</p>
                </div>

                {{-- Clients --}}
                <div class="tab-pane fade" id="client">
                    <h4>👥 Informations client</h4>
                    <a href="{{ route('users.index') }}" class="btn btn-outline-dark">Voir tous les utilisateurs</a>
                </div>

                {{-- Users --}}
                <div class="tab-pane fade" id="users">
                    <h4>🧑‍💻 Users</h4>
                    <p>Contenu user ici.</p>
                </div>

                {{-- Stock --}}
                <div class="tab-pane fade" id="stock">
                    <h4>📊 Stock</h4>
                    <p>Contenu stock ici.</p>
                </div>
            </div>
        </div>
    </div>

    {{-- 2FA Toggle --}}
    @auth
    <div class="card mt-5">
        <div class="card-header">
            <h5>🔐 Authentification à deux facteurs</h5>
        </div>
        <div class="card-body">
            <form method="POST" action="/user/two-factor-authentication">
                @csrf
                @if(auth()->user()->two_factor_secret)
                    @method('DELETE')
                    <div class="mb-3">
                        {!! auth()->user()->twoFactorQrCodeSvg() !!}
                    </div>
                    <button type="submit" class="btn btn-danger">Désactiver</button>
                @else
                    <button type="submit" class="btn btn-primary">Activer</button>
                @endif
            </form>
        </div>
    </div>
    @endauth
</div>
@endsection
