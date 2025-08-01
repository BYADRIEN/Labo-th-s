@extends('welcome')

@section('content')
<style>
  body {
    background-color: #f7f8f6;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: #3b4a2a;
  }

  .dashboard-title {
    font-size: 2.8rem;
    color: #4e6a2f;
    font-weight: 700;
    text-align: center;
    margin-bottom: 2rem;
  }

  .alert-success {
    background-color: #d9ead3;
    border-left: 6px solid #4e6a2f;
    padding: 1rem 1.5rem;
    border-radius: 10px;
    margin-bottom: 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #38521d;
  }

  .btn-custom {
    background-color: #4e6a2f;
    color: #fff;
    border: none;
    padding: 0.5rem 1.3rem;
    border-radius: 25px;
    font-weight: 600;
    transition: background-color 0.3s ease;
    cursor: pointer;
  }
  .btn-custom:hover {
    background-color: #3e5720;
  }

  .dashboard-section {
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 8px 15px rgba(78, 106, 47, 0.15);
    padding: 1.8rem 2rem;
    margin-bottom: 2.5rem;
    border-left: 6px solid #a4c639;
    transition: box-shadow 0.3s ease;
  }
  .dashboard-section:hover {
    box-shadow: 0 12px 20px rgba(78, 106, 47, 0.35);
  }

  .section-title {
    font-size: 1.7rem;
    margin-bottom: 1rem;
    color: #567829;
    font-weight: 700;
    display: flex;
    align-items: center;
    gap: 0.6rem;
  }

  .dashboard-info {
    color: #6b7c3f;
    font-size: 1rem;
    margin-bottom: 1.5rem;
  }

  .btn-link {
    display: inline-block;
    padding: 0.5rem 1.3rem;
    background-color: #4e6a2f;
    color: white;
    border-radius: 25px;
    text-decoration: none;
    font-weight: 600;
    transition: background-color 0.3s ease;
  }
  .btn-link:hover {
    background-color: #3e5720;
  }

  /* Icon style with emoji or bootstrap icons */
  .section-title span.icon {
    font-size: 1.5rem;
  }
  .btn-grey {
  background-color: #e0e0e0;
  color: #3b4a2a;
  border: none;
  padding: 0.5rem 1.2rem;
  border-radius: 20px;
  font-weight: 600;
  transition: background-color 0.3s ease;
  text-decoration: none;
}
.btn-grey:hover {
  background-color: #d5d5d5;
}

.btn-green {
  background-color: #a4c639;
  color: #fff;
  border: none;
  padding: 0.5rem 1.2rem;
  border-radius: 20px;
  font-weight: 600;
  transition: background-color 0.3s ease;
  text-decoration: none;
}
.btn-green:hover {
  background-color: #8aa82f;
}

.btn-red {
  background-color: #d9534f;
  color: #fff;
  border: none;
  padding: 0.5rem 1.2rem;
  border-radius: 20px;
  font-weight: 600;
  transition: background-color 0.3s ease;
  cursor: pointer;
}
.btn-red:hover {
  background-color: #c9302c;
}
</style>

<div class="container py-5">
  <h1 class="dashboard-title">📊 Tableau de bord Administrateur</h1>

  @auth('client')
   <div class="alert-success">
  <div>Connecté en tant que <strong>{{ auth('client')->user()->prenom }} {{ auth('client')->user()->nom }}</strong></div>
  <div class="d-flex gap-2 align-items-center">
    <a href="{{ route('profile.password') }}" class="btn-grey">🔑 Mot de passe</a>
    <a href="{{ route('profile.edit') }}" class="btn-green">👤 Profil</a>
    <form method="POST" action="{{ route('logout') }}" class="d-inline">
      @csrf
      <button type="submit" class="btn-red">🚪 Déconnexion</button>
    </form>
  </div>
</div>
  @endauth

  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">🛒</span> Commandes récentes</h2>
    <p class="dashboard-info">Visualisez les dernières commandes passées par vos clients.</p>
    <a href="{{ route('commandes') }}" class="btn-link">Voir les commandes</a>
  </div>
@role('admin')
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">🫖</span> Produits en stock</h2>
    <p class="dashboard-info">Suivez l’inventaire de vos thés disponibles.</p>
    <a href="{{ route('indexstock') }}" class="btn-link">Voir le stock</a>
  </div> 
  @endrole
@role('admin')
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">📦</span> Produits du magasin</h2>
    <p class="dashboard-info">Ajout, modification, suppression des produits.</p>
    <a href="{{ route('indexpost') }}" class="btn-link">Gérer les produits</a>
  </div>
 @endrole
 @role('admin')
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">👥</span> Clients enregistrés</h2>
    <p class="dashboard-info">Liste des amateurs de thé fidèles à votre boutique.</p>
    <a href="{{ route('indexclient') }}" class="btn-link">Voir les clients</a>
  </div>
   @endrole
@role('admin')
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">❤️</span> Likes</h2>
    <p class="dashboard-info">Avis et retours de vos clients sur vos produits.</p>
    <a href="{{ route('indexlike') }}" class="btn-link">Voir les likes</a>
  </div>
   @endrole
  @role('admin')
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">📂</span> Catégories</h2>
    <p class="dashboard-info">Gestion des catégories de produits.</p>
    <a href="{{ route('indexcategories') }}" class="btn-link">Gérer les catégories</a>
  </div>
  @endrole

  @role('admin')
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">🔐</span> Rôles</h2>
    <p class="dashboard-info">Gestion des rôles utilisateurs.</p>
    <a href="{{ route('indexrole') }}" class="btn-link">Gérer les rôles</a>
  </div>
  @endrole
  <div class="dashboard-section">
    <h2 class="section-title"><span class="icon">💬</span>Commentaires</h2>
<p class="dashboard-info">Gestion des commentaires et retours clients.</p>
<a href="{{ route('indexcomment') }}" class="btn-link">Gérer les commentaires</a>
  </div>
</div>
@endsection