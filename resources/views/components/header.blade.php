<!-- -->
<nav class="navbar navbar-expand-lg bg-body-sucess">
    <div class="container-fluid bg-success d-flex justify-content-between p-2">
        <a class="navbar-brand p-2" href="{{ route('home') }}">
            <img src="https://img.freepik.com/psd-gratuit/logo-abstrait-degrade_23-2150689652.jpg?w=740&t=st=1722250868~exp=1722251468~hmac=7d6e92eb3cf81bc5e94be80b9caf865620c8b08a795254d2361c14dc78eaac66" alt="Bootstrap" width="50">
        </a>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="{{ route('about') }}">about me</a>
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
