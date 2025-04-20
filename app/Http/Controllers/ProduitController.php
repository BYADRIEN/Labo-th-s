<?php

namespace App\Http\Controllers;

use App\Models\Client;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Facades\View;
//use Illuminate\Support\Facades\Validator;
use App\Http\Requests\PFVRequest;
use Spatie\QueryBuilder\QueryBuilder;

class ProduitController extends Controller
{
    //
    public function index()
    {
        // Récupérer les posts avec le filtre 'title' et la relation 'category'
        $posts = QueryBuilder::for(Post::class)
            ->allowedFilters(['title','category.catname','categories.id'])
            ->with('category')  // Charger la relation 'category' en même temps
            ->get();

        // Récupérer toutes les catégories avec leurs posts
        $categories = Category::with('posts')->get();

        // Passer les variables à la vue
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
        $posts->stock = $request->input('stock');
        $posts->price = $request->input('price');
        $posts->img = $request->input('price');
        $posts->category_id = $request->input('category_id'); // Assurez-vous de recevoir une valeur pour category_id

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
    public function delete($id)
    {
        $post = Post::find($id);
        $post->delete();
        return redirect('produits');

    }
}
