<style>
  /* Styles pour la barre de navigation */
  .navbar-custom { /* Un vert Bootstrap 'success' plus doux */
    padding: 1rem 0;
    box-shadow: 0 2px 4px rgba(0,0,0,.1); /* Légère ombre pour un effet de profondeur */
  }

  .navbar-brand-custom {
    font-size: 1.8rem;
    font-weight: bold;
    color: #2e7d32;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.2); /* Légère ombre sur le texte */
  }

  .nav-link-custom {
  color: #2e7d32 !important; /* Vert forêt */
  font-size: 1.1rem;
  padding: 0.5rem 1rem;
  transition: background-color 0.3s ease, color 0.3s ease;
  border-radius: 5px;
}

  .nav-link-custom:hover,
  .nav-link-custom:focus {
    background-color: rgba(255,255,255,0.2); /* Légère surbrillance au survol */
    color: #ffffff !important;
    text-decoration: none;
  }

  /* Styles pour les conteneurs d'icônes Font Awesome */
  .nav-icon-container {
    display: flex;
    align-items: center; /* Centrage vertical */
    justify-content: center;
    color: #2e7d32; /* Couleur de l'icône */
    text-decoration: none;
    transition: transform 0.2s ease;
    padding: 0.2rem; /* Petit padding pour le clic */
  }

  .nav-icon-container:hover {
    transform: scale(1.1); /* Petit effet de zoom au survol */
  }

  /* Style spécifique pour les icônes Font Awesome */
  .nav-icon-container .fas,
  .nav-icon-container .far { /* .fas pour Solid, .far pour Regular */
    font-size: 1.5rem; /* Taille de l'icône. Ajustez selon le texte. */
    vertical-align: middle; /* Aide à l'alignement avec le texte si combiné */
  }


  /* Style pour le badge du panier */
  .cart-badge {
    top: 5px; /* Ajuster la position verticale du badge */
    left: calc(100% + 5px); /* Placer le badge juste après l'icône */
    transform: translate(-50%, -50%); /* Ajuster pour centrer le badge sur l'angle */
    background-color: #dc3545; /* Couleur rouge Bootstrap 'danger' */
    font-size: 0.75rem; /* Taille de la police du badge */
    padding: .25em .6em; /* Padding pour le badge */
    border-radius: 50%; /* Rendre le badge bien rond */
    min-width: 22px; /* Assure que le badge est un cercle même avec un seul chiffre */
    height: 22px;
    display: flex;
    align-items: center;
    justify-content: center;
    white-space: nowrap; /* Empêche le texte de se casser sur plusieurs lignes */
  }
</style>

<nav class="navbar navbar-expand-lg navbar-custom bg-light text-success">
  <div class="container d-flex justify-content-between align-items-center">
<i class="fa-solid fa-mug-saucer text-success"></i>
    <a class="navbar-brand-custom text-decoration-none" href="{{ route('home') }}">Labo des Thés</a>

    <ul class="navbar-nav flex-row ms-auto me-4">
      <li class="nav-item">
        <a class="nav-link-custom text-decoration-none" href="{{ route('about') }}">About me</a>
      </li>
      <li class="nav-item">
        <a class="nav-link-custom text-decoration-none " href="{{ route('produits') }}">Nos thés</a>
      </li>
      <li class="nav-item">
        <a class="nav-link-custom text-decoration-none" href="{{ route('gallery') }}">Galerie</a>
      </li>
    </ul>

    <div class="d-flex align-items-center gap-3">
      @auth
      <a class="nav-icon-container" href="{{ route('dashboard') }}" title="Dashboard">
        <i class="fas fa-user-circle"></i> </a>
      @else
      <a class="nav-icon-container" href="{{ route('login') }}" title="Login">
        <i class="fas fa-user-circle"></i> </a>
      @endauth

      <a class="nav-icon-container" href="#" title="Favoris">
        <i class="fas fa-heart"></i> </a>

      <a class="nav-icon-container position-relative" href="{{ route('shopping.cart') }}" title="Panier">
        <i class="fas fa-shopping-cart"></i> <span class="position-absolute cart-badge text-white">
          {{ count((array) session('cart')) }}
          <span class="visually-hidden">Articles dans le panier</span>
        </span>
      </a>
    </div>
  </div>
</nav>