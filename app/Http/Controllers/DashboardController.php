<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post; // <-- N'oubliez pas d'importer votre modèle Post ici !
use App\Models\Category;
class DashboardController extends Controller
{
    /**
     * Affiche le tableau de bord principal.
     */
    public function index()
{
    $posts = Post::all();
    $categories = Category::all(); // Ajoute cette ligne

    // Passe les deux variables à la vue
    return view('dashboard', compact('posts', 'categories'));
}
}
