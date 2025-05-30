@extends('welcome')
<div class="container text-center">
    @role('admin')
    Je suis un admin
    @if(Auth::guard('client')->check())
        {{ Auth::guard('client')->user()->name }}
    @endif
    @endrole
    <h1>Welcome to the Dashboard</h1>
    @auth('client')
        <h3>Je suis connecté {{ auth()->user()->nom }} {{ auth()->user()->prenom }}</h3>
    @else
        <h3>Je ne suis pas connecté</h3>
    @endauth
    <a href="{{ route('home') }}">Retour</a>
    <a href="{{ route('profile.password') }}">modifier password</a>
    <a href="{{ route('profile.edit') }}">modifier compte</a>
</div>
<div class="container mt-4">
    <div class="row">
        <!-- Colonne de gauche : menu -->
        <div class="col-4">
            <h4>Menu</h4>
            <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <button class="nav-link active" id="v-pills-post-tab" data-bs-toggle="pill" data-bs-target="#v-pills-post" type="button" role="tab" aria-controls="v-pills-post" aria-selected="true">
                   Produit(s)
                </button>
                <button class="nav-link" id="v-pills-commentaires-tab" data-bs-toggle="pill" data-bs-target="#v-pills-commentaires" type="button" role="tab" aria-controls="v-pills-commentaires" aria-selected="false">
                    Commentaire(s)
                </button>
                <button class="nav-link" id="v-pills-likes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-likes" type="button" role="tab" aria-controls="v-pills-likes" aria-selected="false">
                    Like(s)
                </button>
                <button class="nav-link" id="v-pills-likes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-likes" type="button" role="tab" aria-controls="v-pills-likes" aria-selected="false">
                  Informations du client
                </button>
                <button class="nav-link" id="v-pills-likes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-likes" type="button" role="tab" aria-controls="v-pills-likes" aria-selected="false">
                   User
                </button>
                <button class="nav-link" id="v-pills-likes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-likes" type="button" role="tab" aria-controls="v-pills-likes" aria-selected="false">
                    Stock
                </button>
            </div>
        </div>

        <!-- Colonne de droite : contenu -->
        <div class="col-8">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-post" role="tabpanel" aria-labelledby="v-pills-post-tab">
                    <h4>Posts</h4>
                    <a href="{{ route('produits.create') }}">ajout d'un produit</a>
                </div>
                <div class="tab-pane fade" id="v-pills-commentaires" role="tabpanel" aria-labelledby="v-pills-commentaires-tab">
                    <h4>Commentaires</h4>
                    <p>Contenu des commentaires ici.</p>
                </div>
                <div class="tab-pane fade" id="v-pills-likes" role="tabpanel" aria-labelledby="v-pills-likes-tab">
                    <h4>Likes</h4>
                    <p>Contenu des likes ici.</p>
                </div>
            </div>
        </div>
    </div>
</div>
