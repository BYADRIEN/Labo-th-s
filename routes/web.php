<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ClientController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;
use RyanChandler\Comments\Models\Comment;
use App\Models\Client;
use App\Models\Post;
use Laravel\Fortify\Fortify;
use App\Http\Middleware\RedirectIfAuthenticated;


/*
|----------------------------------------------------------------------
| Web Routes
|----------------------------------------------------------------------
|
| Here is where you can register web routes for your application.
| These routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route publique pour la page d'accueil
Route::get('/', [HomeController::class, 'homeindex'])->name('home');

// Appelle les routes de Fortify
//Fortify::routes(); // Ajoute les routes de Fortify automatiquement

// Route protégée par les middlewares 'auth:sanctum' et 'verified'
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::middleware(['role:admin'])->group(function () {
    Route::get('/private', function () {
        return 'Bonjour admin';
    });
});
Route::get('/about', [AboutController::class, 'index'])->name('about');
Route::get('/produits', [ProduitController::class, 'index'])->name('produits');
Route::get('/taks',[\App\Http\Controllers\TasksController::class,'index']);
Route::put('/produits/{id}', [ProduitController::class, 'update'])->name('produits.update');
Route::get('/edit/{id}', [ProduitController::class, 'edit'])->name('produits.edit');
Route::get('/produits/create', [ProduitController::class, 'create'])->name('produits.create');
Route::get('/apropos', [AboutController::class, 'index'])->name('about');
Route::post('insert-data',[ProduitController::class,'insert'])->name('add');
Route::get('/produits/{slug}', [HomeController::class, 'show'])->name('produits.show');

// connexion pour se login
Route::get('/test/login', [ClientController::class, 'login'])->name('login');
Route::post('/test/login', [ClientController::class, 'loginPost'])->name('login.post');
Route::get('/test/register', [ClientController::class, 'index'])->name('client.register');
Route::post('/test/traitement', [ClientController::class, 'traitement_register'])->name('client.traitement');
Route::post('/logout', function (Request $request) {
    Auth::logout();
    $request->session()->invalidate();
    $request->session()->regenerateToken();
    return redirect('/');
})->name('logout');

Route::get('/home', [HomeController::class, 'homeindex'])->name('home');
Route::get('/produits/{id}', [ProduitController::class, 'show'])->name('produit.show');


Route::middleware([RedirectIfAuthenticated::class])->group(function () {
    Route::get('/login', [ClientController::class, 'login'])->name('login');
    Route::get('/register', [ClientController::class, 'register'])->name('register');
});
Route::middleware([RedirectIfAuthenticated::class])->group(function () {
    Route::get('/login', [ClientController::class, 'login'])->name('login');
    Route::get('/register', [ClientController::class, 'register'])->name('register');
});
Route::middleware('guest')->group(function () {
    Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
    Route::post('/login', [LoginController::class, 'login']);
    // autres routes...
});
Route::middleware(['auth', 'verified'])->get('/home',function (){
      return view('home');
})->name('home');

use App\Http\Controllers\Auth\PasswordResetLinkController;

Route::get('forgot-password', [PasswordResetLinkController::class, 'create'])->name('password.request');
Route::post('forgot-password', [PasswordResetLinkController::class, 'store'])->name('password.email');

Route::get('password/reset/{token}/{email}', [PasswordResetLinkController::class, 'showResetForm'])->name('password.reset');
Route::post('password/reset', [PasswordResetLinkController::class, 'reset']);
