<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Client;
use App\Models\Comment; // modèle Comment

class DashboardController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        $categories = Category::all();
        $clients = Client::with('roles')->get();
        $comments = Comment::latest()->take(10)->get();

        return view('dashboard', compact('posts', 'categories', 'clients', 'comments'));
    }
}