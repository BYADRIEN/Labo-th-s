<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
Route::get('/produits/create', [ProduitController::class, 'create'])->name('produits.create');
Route::post('insert-data', [ProduitController::class, 'insert'])->name('add');
Route::get('/produits/{id}', [ProduitController::class, 'show'])->name('produit.show');
Route::get('/edit/{id}', [ProduitController::class, 'edit'])->name('produits.edit');
Route::put('/produits/{id}', [ProduitController::class, 'update'])->name('produits.update');

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

