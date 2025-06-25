<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Post;
use Illuminate\Http\Request;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Str;

// Ajoute ça en haut du fichier si pas déjà


//use Illuminate\Support\Facades\Validator;


class ProduitController extends Controller
{
    //
    public function index()
    {
        // Récupérer les posts avec le filtre 'title' et la relation 'category'
        $posts = QueryBuilder::for(Post::class)
            ->allowedFilters(['title', 'category.catname', 'categories.id'])
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
        //$posts->slug = $request->input('slug');
        $posts->slug = Str::slug($posts->title);
        $posts->stock = $request->input('stock');
        $posts->price = $request->input('price');
        $imgPath = $request->file('img')->store('images', 'public');
        $posts->img = $imgPath;
        $posts->poids = $request->input('poids');
        $posts->montant_tva = $request->input('montant_tva');
        $posts->category_id = $request->input('category_id'); // Assurez-vous de recevoir une valeur pour category_id

        $posts->save();

        return redirect('produits');
    }

    public function edit($id)
    {
        $posts = Post::find($id);
        return view('produits.edit', ['id' => $id]);
    }

    public function update(Request $request, $id)
    {
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

    public function addBookToCart($id)
    {
        $post = Post::findOrFail($id);
        $cart = session()->get('cart', []);
        if (isset($cart[$id])) {
            $cart[$id]['quantity']++;
        } else {
            $cart[$id] = [
                "title" => $post->title,
                "quantity" => 1,
                "price" => $post->price,
                "img" => $post->img
            ];
        }
        session()->put('cart', $cart);
        return redirect()->back()->with('success', 'ajout à la commande');
    }

    public function bookCart()
    {
        return view('cart');
    }

    public function checkout(Request $data)
    {

        if (auth()->check()) {
            $order = new Order();
            $order->status = "pending";
            $order->client_id = auth()->user()->id;
            $order->adress = $data->input('adress');
            $order->fullname = $data->input('fullname');
            $order->phone = $data->input('phone');
            if ($order->save()) {
                $cart = session()->get('cart', []);
                foreach ($cart as $id => $details) {
                    $product = Post::find($id);
                    $orderitem = new OrderItem();
                    $orderitem->order_id = $order->id;
                    $orderitem->product_id = $id;
                    $orderitem->quantity = $details['quantity'];
                    $orderitem->price = $details['price'];
                    $orderitem->save();
                }
            }
            return redirect()->back()->with('success', 'success');
        } else {
            return redirect()->route('login');
        }
    }

    public function mescommandes()
    {

        return view('commandes');
    }

    public function cat()
    {

        return view('produits.category');
    }

    public function add_cat(Request $request)
    {
        $data = new Category;
        $data->catname = $request->category;
        $data->save();
    }
    public function Storeupload(Request $request)
    {
        $request->validate([
            'img' => 'required|mimes:jpg,png,pdf|max:2048'
        ]);
        $file = $request->file('img');
        $path = $file->store('upload');
    }
}
