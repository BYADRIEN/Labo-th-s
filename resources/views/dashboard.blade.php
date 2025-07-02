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
    <a href="{{ url('category_page') }}">ajout d'une catégorie</a>
    <a href="{{ route('roles.index') }}">Roles</a>
    <a href="{{ route('permissions.index') }}">Permissions</a>
    <a href="">mes catégories</a>
    <a href="{{ route('categories') }}">Voir les catégories</a>
    <a href="{{ route('wishlist.index') }}">wishlist</a>
    @role('admin')
    <a href="{{ route('admin.index') }}">admin</a>
    @endrole
    <a href="{{ route('commandes') }}">mes commande</a>
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
                <button class="nav-link" id="v-pills-client-tab" data-bs-toggle="pill" data-bs-target="#v-pills-client" type="button" role="tab" aria-controls="v-pills-client" aria-selected="false">
                    Informations du client
                </button>
                <button class="nav-link" id="v-pills-user-tab" data-bs-toggle="pill" data-bs-target="#v-pills-user" type="button" role="tab" aria-controls="v-pills-user" aria-selected="false">
                    User
                </button>
                <button class="nav-link" id="v-pills-stock-tab" data-bs-toggle="pill" data-bs-target="#v-pills-stock" type="button" role="tab" aria-controls="v-pills-stock" aria-selected="false">
                    Stock
                </button>
            </div>
        </div>

        <!-- Colonne de droite : contenu -->
        <div class="col-8">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-post" role="tabpanel" aria-labelledby="v-pills-post-tab">
                    <h4>Posts</h4>
                    <a href="{{ route('produits.create') }}">Ajout d'un produit</a>
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4"> {{-- g-4 pour plus d'espace entre les cartes --}}
                        @foreach($posts as $post)
                            <div class="col">
                                <div class="card h-100 shadow-sm border-0 d-flex flex-column">
                                    <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="200">
                                    <p>{{ $post->title }}</p>
                                    <p>{{ $post->price }}</p>
                                    <a class="text-success" href="{{ route('produit.show', $post->id) }}">voir l'article</a>
                                    <a class="text-danger" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier (0)</a>
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th scope="col">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><a href="{{ url('edit/' . $post->id) }}">Modifier</a>
                                                <a href="{{ url('delete/' . $post->id) }}">suprimer</a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="tab-pane fade" id="v-pills-commentaires" role="tabpanel" aria-labelledby="v-pills-commentaires-tab">
                    <h4>Commentaires</h4>
                    <p>Contenu des commentaires ici.</p>
                </div>
                <div class="tab-pane fade" id="v-pills-likes" role="tabpanel" aria-labelledby="v-pills-likes-tab">
                    <h4>Likes</h4>
                    <p>Contenu des likes ici.</p>
                </div>
                <div class="tab-pane fade" id="v-pills-client" role="tabpanel" aria-labelledby="v-pills-client-tab">
                    <h4>Client</h4>
                    <a href="{{ route('users.index') }}">Users</a>
                </div>
                <div class="tab-pane fade" id="v-pills-user" role="tabpanel" aria-labelledby="v-pills-user-tab">
                    <h4>User</h4>
                    <p>Contenu user ici.</p>
                </div>
                <div class="tab-pane fade" id="v-pills-stock" role="tabpanel" aria-labelledby="v-pills-stock-tab">
                    <h4>Stock</h4>
                    <p>Contenu stock ici.</p>
                </div>
            </div>
        </div>
    </div>
</div>
@if(Auth::guard('client')->check() && Auth::guard('client')->user()->hasRole('admin'))
    Je suis un admin
    {{ Auth::guard('client')->user()->name }}
@endif

<h1>Welcome to the Dashboard</h1>

@auth('client')
    <h3>Je suis connecté {{ auth('client')->user()->nom }} {{ auth('client')->user()->prenom }}</h3>
    <h1>je suis un client</h1>
@else
    <h3>Je ne suis pas connecté</h3>
@endauth
