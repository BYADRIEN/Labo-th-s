<style>
  /* Styles personnalisés conservés */
  .navbar-custom {
    padding: 1rem 0;
    box-shadow: 0 2px 4px rgba(0,0,0,.1);
  }

  .navbar-brand-custom {
    font-size: 1.8rem;
    font-weight: bold;
    color: #2e7d32;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
  }

  .nav-link-custom {
    color: #2e7d32 !important;
    font-size: 1.1rem;
    padding: 0.5rem 1rem;
    transition: background-color 0.3s ease, color 0.3s ease;
    border-radius: 5px;
  }

  .nav-link-custom:hover,
  .nav-link-custom:focus {
    background-color: rgba(255,255,255,0.2);
    color: #ffffff !important;
    text-decoration: none;
  }

  .nav-icon-container {
    display: flex;
    align-items: center;
    justify-content: center;
    color: #2e7d32;
    text-decoration: none;
    transition: transform 0.2s ease;
    padding: 0.2rem;
  }

  .nav-icon-container:hover {
    transform: scale(1.1);
  }

  .nav-icon-container .fas,
  .nav-icon-container .far {
    font-size: 1.5rem;
    vertical-align: middle;
  }

  .cart-badge {
    top: 5px;
    left: calc(100% + 5px);
    transform: translate(-50%, -50%);
    background-color: #dc3545;
    font-size: 0.75rem;
    padding: .25em .6em;
    border-radius: 50%;
    min-width: 22px;
    height: 22px;
    display: flex;
    align-items: center;
    justify-content: center;
    white-space: nowrap;
  }
</style>

<nav class="navbar navbar-expand-lg navbar-custom bg-light text-success">
  <div class="container">
    <a class="navbar-brand-custom text-decoration-none d-flex align-items-center gap-2" href="{{ route('home') }}">
      <i class="fa-solid fa-mug-saucer text-success"></i>
      Labo des thés
    </a>

    <!-- Burger button -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Menu responsive -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link-custom text-decoration-none" href="{{ route('about') }}">About me</a>
        </li>
        <li class="nav-item">
          <a class="nav-link-custom text-decoration-none" href="{{ route('produits') }}">Nos thés</a>
        </li>
        <li class="nav-item">
          <a class="nav-link-custom text-decoration-none" href="{{ route('gallery') }}">Galerie</a>
        </li>
      </ul>

      <div class="d-flex align-items-center gap-3 ms-lg-3 mt-3 mt-lg-0">
        @auth
          <a class="nav-icon-container" href="{{ route('dashboard') }}" title="Dashboard">
            <i class="fas fa-user-circle"></i>
          </a>
        @else
          <a class="nav-icon-container" href="{{ route('login') }}" title="Login">
            <i class="fas fa-user-circle"></i>
          </a>
        @endauth

        <a class="nav-icon-container" href="{{ route('wishlist.index') }}" title="Favoris">
          <i class="fas fa-heart"></i>
        </a>

        <a class="nav-icon-container position-relative" href="{{ route('shopping.cart') }}" title="Panier">
          <i class="fas fa-shopping-cart"></i>
          <span class="position-absolute cart-badge text-white">
            {{ count((array) session('cart')) }}
            <span class="visually-hidden">Articles dans le panier</span>
          </span>
        </a>
      </div>
    </div>
  </div>
</nav>