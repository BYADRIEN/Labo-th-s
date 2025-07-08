<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // Appliquer le middleware 'auth' à toutes les méthodes sauf 'homeindex' et 'show'
        $this->middleware('auth')->except(['homeindex', 'show']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function show($slug)
    {
        $post = Post::where('slug', $slug)->firstOrFail();
        return view('produits.show', compact('post'));
    }

    public function homeindex()
    {
        // Nouveautés : derniers thés ajoutés
        $nouveautes = Post::latest()->take(5)->get();

        // Meilleurs thés : ceux avec le plus de likes
        $topThes = Post::withCount('likes')
            ->having('likes_count', '>=', 1) // FILTRE ici !
            ->orderByDesc('likes_count') // Puis TRI (optionnel)
            ->take(5) // Optionnel, si tu veux une limite
            ->get();

        return view('home', [
            'nouveautes' => $nouveautes,
            'topThes' => $topThes,
        ]);
    }
}
