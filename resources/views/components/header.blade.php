<nav class="navbar bg-success">
    <div class="container">
        <a class="navbar-brand text-white" href="{{ route('home') }}">labo'h</a>
        <ul class="navbar-nav flex-row">
            <li class="nav-item px-2"><a class="nav-link text-white" href="{{ route('about') }}">About me</a></li>
            <li class="nav-item px-2"><a class="nav-link text-white" href="{{ route('produits') }}">Nos thés</a></li>
            <li class="nav-item px-2"><a class="nav-link text-white" href="{{ route('gallery') }}">Galerie</a></li>
        </ul>
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
                <a class="text-white text-decoration-none" href="{{ route('login') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="50" height="50" viewBox="0 0 50 50"
                         fill="none" stroke-width="1.5" stroke="currentColor" class="size-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z"/>
                    </svg>
                </a>
                <a class="text-white text-decoration-none" href="">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="50" height="50" viewBox="0 0 50 50"
                         fill="none" stroke-width="1.5" stroke="currentColor" class="size-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z"/>
                    </svg>
                </a>
                <a class="text-white text-decoration-none position-relative" href="{{ route('shopping.cart') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 50 50"
                         fill="none" stroke-width="1.5" stroke="currentColor" class="size-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="M15.75 10.5V6a3.75 3.75 0 1 0-7.5 0v4.5m11.356-1.993 1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 0 1-1.12-1.243l1.264-12A1.125 1.125 0 0 1 5.513 7.5h12.974c.576 0 1.059.435 1.119 1.007ZM8.625 10.5a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm7.5 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"/>
                    </svg>
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
        {{ count((array) session('cart')) }}
        <span class="visually-hidden">Articles dans le panier</span>
    </span>
                </a>
            @endauth
        </div>
    </div>
</nav>


