<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Facades\View;
//use Illuminate\Support\Facades\Validator;
use App\Http\Requests\PFVRequest;

class ProduitController extends Controller
{
    //
    public function index(){
        // Récupérer tous les posts
        $posts = Post::all();


        $posts = Post::with('category')->get();
        $categories = Category::with('posts')->get();
        // Passer la variable 'posts' à la vue 'produits.Products'
        //return view('produits.Products', ['posts' => $posts]);
        return view('produits.Products', compact('posts', 'categories'));
    }

    public function create()
    {
    return view('produits.create');
    }
    public function add(Request $request)
    {
       return $request->input();
    }
    public function insert(Request $request)
    {
        $posts = new Post;
        $posts->title = $request->input('title');
        $posts->content = $request->input('content');
        $posts->slug = $request->input('slug');
        $posts->save();
        return redirect('produits');
    }
    public function edit($id){
        $posts = Post::find($id);
       return view('produits.edit', ['id' => $id ]);
    }
    public function update(Request $request, $id){
    $posts = Post::find($id);
    $posts->title = $request->input('title');
    $posts->content = $request->input('content');
    $posts->slug = $request->input('content');
    $posts->save();
        return redirect()->route('produits');
    }
    public function show($id)
    {
        // Récupérer le produit par ID, en chargeant les commentaires
        $post = Post::with('comments')->find($id);

        if ($post) {
            return view('produits.show', ['post' => $post]);
        } else {
            return redirect()->route('produits')->with('error', 'Produit non trouvé.'); // Rediriger si le produit n'est pas trouvé
        }
    }
}
