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
        // Récupérer seulement les 5 derniers posts
        $posts = Post::orderBy('created_at', 'desc')->take(5)->get();

        return view('home', compact('posts'));
        /* la fonction compact équivaut à array('posts' => $posts) */
        //return view('home2');
    }
}

