<?php

use App\Http\Controllers\PermissionController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\DashboardController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

// Page d'accueil publique
Route::get('/', [HomeController::class, 'homeindex'])->name('home');

// Routes Fortify pour la réinitialisation du mot de passe
Route::get('forgot-password', [PasswordResetLinkController::class, 'create'])->name('password.request');
Route::post('forgot-password', [PasswordResetLinkController::class, 'store'])->name('password.email');
Route::get('password/reset/{token}/{email}', [PasswordResetLinkController::class, 'showResetForm'])->name('password.reset');
Route::post('password/reset', [PasswordResetLinkController::class, 'reset']);

// Authentification et inscription custom (test)
Route::get('/test/login', [ClientController::class, 'login'])->name('login');
Route::post('/test/login', [ClientController::class, 'loginPost'])->name('login.post');
Route::get('/test/register', [ClientController::class, 'index'])->name('client.register');
Route::post('/test/traitement', [ClientController::class, 'traitement_register'])->name('client.traitement');

// Déconnexion
Route::post('/logout', function (Request $request) {
    Auth::logout();
    $request->session()->invalidate();
    $request->session()->regenerateToken();
    return redirect('/');
})->name('logout');

// Routes protégées (dashboard, profil, commandes, etc.)
Route::middleware(['auth', 'verified'])->group(function () {
    // Dashboard via contrôleur, pas de closure
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Home protégé (optionnel, tu peux enlever si redondant)
    Route::get('/home', [HomeController::class, 'homeindex'])->name('home');

    // Profil
    Route::view('/profil/edit', 'profile.edit')->name('profile.edit');
    Route::view('/profil/password', 'profile.password')->name('profile.password');

    // Commandes client
    Route::get('/client/commandes', [ProduitController::class, 'mescommandes'])->name('commandes');

    // Post commentaires (auth requis)
    Route::post('/posts/{post}/comments', [\App\Http\Controllers\Posts\CommentsController::class, 'store'])->name('comments.store');
});

// Routes produits publiques et sécurisées
Route::get('/produits', [ProduitController::class, 'index'])->name('produits');
//Route::get('/produits/{id}', [ProduitController::class, 'show'])->name('produit.show');
//Route::get('/produits/create', [ProduitController::class, 'create'])->name('produits.create');
//Route::post('insert-data', [ProduitController::class, 'insert'])->middleware('auth')->name('add');
//Route::get('/edit/{id}', [ProduitController::class, 'edit'])->name('produits.edit');
//Route::put('/produits/{id}', [ProduitController::class, 'update'])->name('produits.update');
//Route::delete('delete/{id}', [ProduitController::class, 'delete'])->name('produits.delete');

// Ordre correct pour les routes de produits
Route::get('/produits/create', [ProduitController::class, 'create'])->name('produits.create'); // Route spécifique en premier !
Route::get('/produits/{id}', [ProduitController::class, 'show'])->name('produit.show'); // Route générique en second

// ... le reste de vos routes de produits (insert-data, edit, update, delete)
Route::post('insert-data', [ProduitController::class, 'insert'])->middleware('auth')->name('add');
Route::get('/edit/{id}', [ProduitController::class, 'edit'])->name('produits.edit');
Route::put('/produits/{id}', [ProduitController::class, 'update'])->name('produits.update');
Route::delete('delete/{id}', [ProduitController::class, 'delete'])->name('produits.delete');


// Autres pages publiques
Route::get('/about', [AboutController::class, 'index'])->name('about');
Route::get('/gallery', [GalleryController::class, 'index'])->name('gallery');

// Wishlist
Route::get('/wishlist', [WishlistController::class, 'index'])->name('wishlist.index');
Route::post('/wishlist/add/{post}', [WishlistController::class, 'add'])->name('wishlist.add');
Route::post('/wishlist/remove/{post}', [WishlistController::class, 'remove'])->name('wishlist.remove');

// Panier
Route::get('/add-to-cart/{id}', [ProduitController::class, 'addBooktoCart'])->name('addbook.to.cart');
Route::put('/update-cart/{id}', [ProduitController::class, 'updateBookToCart'])->name('update.to.cart');
Route::get('shopping-cart', [ProduitController::class, 'bookCart'])->name('shopping.cart');
Route::get('/checkout', [ProduitController::class, 'checkout'])->name('checkout');
Route::get('/delete-update-cart/{id}',[ProduitController::class, 'deleteBookTocart'])->name('delete.book.to.cart');

// Permissions et rôles
Route::resource('permissions', PermissionController::class);
Route::resource('roles', \App\Http\Controllers\RoleController::class);

// Gestion utilisateurs (admin, rôles)
Route::get('/users', [ClientController::class, 'indexindex'])->middleware('auth')->name('users.index');
Route::controller(\App\Http\Controllers\RoleController::class)->group(function () {
    Route::get('roles/{role}/give-permissions', 'showGivePermissionForm')->name('roles.show-give-permissions');
    Route::put('roles/{role}/give-permissions', 'givePermission')->name('roles.give-permissions');
});

// Admin
Route::get('/admin', function () {
    return view('admin.index');
})->middleware(['auth', 'role:admin'])->name('admin.index');

Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
    Route::get('users/{user}/edit-role', [ClientController::class, 'editRoleForm'])->name('users.editRoleForm');
    Route::put('users/{user}/update-role', [ClientController::class, 'updateRole'])->name('users.updateRole');
});

// Catégories et fichiers
Route::get('/category_page', [ProduitController::class, 'cat'])->name('category_page');
Route::post('/add_category', [ProduitController::class, 'add_cat'])->name('add_category');
Route::post('/upload_file', [ProduitController::class, 'Storeupload'])->name('file.upload');
Route::get('/categories', [ProduitController::class, 'categoryvie'])->name('categories');
Route::post('/change_status/{id}', [ProduitController::class, 'changeStatus'])->name('admin.change_status');


Route::get('categories/{id}/edit', [ProduitController::class, 'editcategory'])->name('categories.edit');
Route::put('categories/{id}', [ProduitController::class, 'updatecategory'])->name('categories.update');
Route::delete('categories/{id}', [ProduitController::class, 'destroy'])->name('categories.delete');
Route::get('/comments/{comment}/edit', [DashboardController::class, 'edit'])->name('comment.edit');
Route::put('/comments/{comment}', [DashboardController::class, 'update'])->name('comment.update');

Route::get('/update-client/{id}', [DashboardController::class,'updateClient'])->name('client.edit');
Route::post('update/traitement', [DashboardController::class,'updateClientTraitement'])->name('updateClientTraitement');
Route::delete('/delete_client/{id}', [DashboardController::class, 'destroyClient'])->name('delete_client');


Route::get('dashboard/post',[DashboardController::class,'indexpost'])->name('indexpost');
Route::get('dashboard/comment',[DashboardController::class,'indexcomment'])->name('indexcomment');
Route::get('dashboard/client',[DashboardController::class,'indexclient'])->name('indexclient');
Route::get('dashboard/stock',[DashboardController::class,'indexstock'])->name('indexstock');
Route::get('dashboard/like',[DashboardController::class,'indexlike'])->name('indexlike');
Route::get('dashboard/categories',[DashboardController::class,'indexcategories'])->name('indexcategories');
Route::get('dashboard/roles',[DashboardController::class,'indexrole'])->name('indexrole');
Route::get('dashboard/twoauthenification',[DashboardController::class,'twoauthenification'])->name('twoauthenification');

Route::get('/orders/{id}/items', [ProduitController::class, 'items'])->name('orders.items');