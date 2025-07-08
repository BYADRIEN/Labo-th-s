<!-- -->
<nav class="navbar navbar-expand-lg bg-success m-0 p-0">
    <div class="container-fluid bg-success d-flex justify-content-between p-2">
        <a class="text-white navbar-brand p-2" href="{{ route('home') }}">
           labo'h
        </a>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="{{ route('about') }}">About me</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{ route('produits') }}">Nos thés</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{ route('gallery') }}">Gallerie</a>
                </li>
            </ul>
        </div>
        <div class="d-flex p-2" role="search">
            @auth
                <a class="text-white text-decoration-none" href="{{ route('logout') }}"
                   onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    Se déconnecter
                </a>
                <a class="text-white text-decoration-none" href="{{ route('dashboard') }}">dashboard</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
                {{ auth()->user()->nom }} {{ auth()->user()->prenom }}
            @else
                <a class="text-white text-decoration-none" href="{{ route('login') }}">Se connecter</a>
                <a class="text-white text-decoration-none" href="{{ route('client.register') }}">S'enregistrer</a>
            @endauth
        </div>
    </div>
</nav>
