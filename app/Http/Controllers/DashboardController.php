<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post; // <-- N'oubliez pas d'importer votre modèle Post ici !

class DashboardController extends Controller
{
    /**
     * Affiche le tableau de bord principal.
     */
    public function index()
    {
        // --- VOICI LA LIGNE CLÉ : Post::all() ---
        // Cette ligne va récupérer TOUS les posts de votre table 'posts'.
        // J'ai renommé la variable en 'posts' (au pluriel) car elle contiendra plusieurs posts.
        $posts = Post::all();

        // Passe la collection de posts à la vue 'dashboard'.
        // Assurez-vous que la variable passée ici correspond au nom utilisé dans la vue.
        return view('dashboard', compact('posts'));
    }
}
