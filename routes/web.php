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
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

// Page d'accueil publique
Route::get('/', [HomeController::class, 'homeindex'])->name('home');

// Routes de Fortify
Route::get('forgot-password', [PasswordResetLinkController::class, 'create'])->name('password.request');
Route::post('forgot-password', [PasswordResetLinkController::class, 'store'])->name('password.email');
Route::get('password/reset/{token}/{email}', [PasswordResetLinkController::class, 'showResetForm'])->name('password.reset');
Route::post('password/reset', [PasswordResetLinkController::class, 'reset']);

// Authentification et inscription
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

// Dashboard protégé
Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
    Route::get('/home', [HomeController::class, 'homeindex'])->name('home');
});

// Routes produits
Route::get('/produits', [ProduitController::class, 'index'])->name('produits');
Route::get('/produits/create', [ProduitController::class, 'create'])->name('produits.create')->middleware('auth');
Route::post('insert-data', [ProduitController::class, 'insert'])->name('add')->middleware('auth');
Route::get('/produits/{id}', [ProduitController::class, 'show'])->name('produit.show');
Route::get('/edit/{id}', [ProduitController::class, 'edit'])->name('produits.edit');
Route::put('/produits/{id}', [ProduitController::class, 'update'])->name('produits.update');
Route::get('delete/{id}', [ProduitController::class, 'delete'])->name('produits.delete');

// À propos
Route::get('/about', [AboutController::class, 'index'])->name('about');

Route::get('/home',function (){
      return view('home');
})->middleware(['auth','verified']);
//Route::get('/email/verify', function () {
//    return view('verify-email'); // Assure-toi que cette vue existe dans `resources/views/`
//})->middleware('auth')->name('verification.notice');
//Route::middleware(['auth', 'verified'])->group(function () {
//    Route::get('/dashboard', function () {
//        return view('dashboard');
//    })->name('dashboard');
//});
use Laravel\Fortify\Features;
use Laravel\Fortify\Fortify;

//Fortify::routes();
//Route::get('/home', [HomeController::class, 'homeindex'])->middleware('auth')->name('home');
Route::view('/profil/edit','profile.edit')->middleware('auth')->name('profile.edit');
Route::view('/profil/password','profile.password')->middleware('auth')->name('profile.password');

//Route::post('/posts/{post}/comments', [\App\Http\Controllers\Posts\CommentsController::class, 'store'])->name('comments.store');

//Route::post('{post}/comments','CommentsController@store');

Route::post('/posts/{post}/comments', [\App\Http\Controllers\Posts\CommentsController::class, 'store'])->name('comments.store');
use App\Http\Controllers\GalleryController;

Route::get('/gallery', [GalleryController::class, 'index'])->name('gallery');

Route::get('/test-wishlist', function () {
    $user = \App\Models\User::first(); // Ou auth()->user() si t'es connecté
    return $user->wishlist; // Doit retourner une collection (même vide)
});
// Routes pour la wishlist
use App\Http\Controllers\WishlistController;
use Tests\Fixtures\Controllers\ProductController;

// Dans routes/web.php
Route::get('/wishlist', [WishlistController::class, 'index'])->name('wishlist.index');
Route::post('/wishlist/add/{post}', [WishlistController::class, 'add'])->name('wishlist.add');
Route::post('/wishlist/remove/{product}', [WishlistController::class, 'remove'])->name('wishlist.remove');

Route::get('/add-to-cart/{id}', [ProduitController::class, 'addBooktoCart'])->name('addbook.to.cart');
Route::get('shopping-cart', [ProduitController::class, 'bookCart'])->name('shopping.cart');
Route::get('/checkout',[ProduitController::class,'checkout'])->name('checkout');
Route::get('/client/commandes',[ProduitController::class,'mescommandes'])->name('commandes');

Route::resource('permissions', PermissionController::class);
Route::resource('roles', \App\Http\Controllers\RoleController::class);
Route::get('/users', [ClientController::class, 'indexindex'])->name('users.index')->middleware('auth');
//Route::get('/users', [ClientController::class, 'indexindex'])->name('users.list')->middleware('auth');
Route::controller(\App\Http\Controllers\RoleController::class)->group(function () {
    Route::get('roles/{role}/give-permissions', 'showGivePermissionForm')->name('roles.show-give-permissions');
    Route::put('roles/{role}/give-permissions', 'givePermission')->name('roles.give-permissions');
});
Route::get('/admin',function (){
    return view('admin.index');
})->middleware(['auth', 'role:admin'])->name('admin.index');

Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
    Route::get('users/{user}/edit-role', [ClientController::class, 'editRoleForm'])->name('users.editRoleForm');
    Route::put('users/{user}/update-role', [ClientController::class, 'updateRole'])->name('users.updateRole');
});

