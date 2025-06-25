@extends('welcome')
@extends('components.header')
@section('content')
    <section class="hero-section">
        {{-- Ici, tu peux ajouter le contenu qui sera par-dessus ton image de fond --}}
        <div class="container text-center text-white p-5">
            <h1>Nos thés</h1>
            <p>Découvrez nos produits ici.</p>
            <button class="btn btn-primary">Explorer</button>
        </div>
    </section>
    <form method="GET">
        <select name="filter[category.catname]" onchange="this.form.submit()">
            <option value="">Tous les thés</option>
            @foreach($categories as $category)
                <option value="{{ $category->catname }}" {{ request('filter.category.catname') == $category->catname ? 'selected' : '' }}>
                    {{ $category->catname }}
                </option>
            @endforeach
        </select>
    </form>
    <a href="{{ route('shopping.cart') }}">cart {{ count((array) session('cart')) }}</a>
    @if(session('success'))
        <div>
         {{ session('success') }}
        </div>
    @endif
    @foreach($posts as $post)
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Title du post</th>
                <th scope="col">Content du post</th>
                <th scope="col">Slug du post</th>
                <th scope="col">Date de publication du post</th>
                <th scope="col">Action</th>
                <th scope="col">Catégorie pour menu</th>
                <th scope="col">Commentaire</th>
                <th scope="col">Likes</th>
                <th scope="col">stock</th>
                <th scope="col">price</th>
                <th scope="col">img</th>
                <th scope="col">poids</th>
                <th scope="col">montant_tva</th>
                <th scope="col">ajout à la commande</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><p>{{ $post->title }}</p></td>
                <td><p>{{ $post->content }}</p></td>
                <td><p>{{ $post->slug }}</p></td>
                <td><p>Publié le : {{ $post->created_at->format('d/m/Y') }}</p></td>
                <td><a href="{{ url('edit/' . $post->id) }}">Modifier</a>
                    <a href="{{ url('delete/' . $post->id) }}">suprimer</a>
                </td>
                <td><p>{{ $post->category->catname }}</p></td>
                <td><h2>Commentaires :</h2>
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
                                <strong>{{ $comment->client->prenom }}</strong>
                                - {{ $comment->created_at->diffForHumans() }}
                                <p class="p-3 mb-2 bg-primary text-white">{{ $post->category->catname }}</p>
                            </div>
                            <div class="card-body">
                                {{ $comment->body }}
                            </div>
                        @endforeach
                    </div>
                </td>
                <td>
                    <livewire:like-button :key="$post->id" :$post/>
                </td>
                <td>
                    {{ $post->stock }}
                </td>
                <td>
                    {{ $post->price }}
                </td>
                <td>
                    <img src="{{ asset('storage/' . $post->img) }}" alt="{{ $post->title }}" width="200">
                </td>
                <td>
                    {{ $post->poids }}
                </td>
                <td>
                    {{ $post->montant_tva }}
                </td>
                <td>
                    <form action="{{ route('wishlist.add', $post->id) }}" method="POST">
                        @csrf
                        <button type="submit">Ajouter à la wishlist</button>
                    </form>
                </td>
                <td>
                    <a class="text-danger" href="{{ route('addbook.to.cart',$post->id) }}">ajout au panier (0)</a>
                </td>
            </tr>
            </tbody>
        </table>
    @endforeach
@endsection
@section('footer')
    @include('components.footer')
@endsection
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
