<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Post;
use Illuminate\Http\Request;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Str;
use App\Models\Client;
use App\Models\Comment; // à mettre en haut du fichier
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderMail;


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
    $categories = Category::all();
    return view('produits.create', compact('categories'));
}
    public function add(Request $request)
    {
        return $request->input();
    }

    public function insert(Request $request)
{
    $validated = $request->validate([
        'title' => 'required|string|max:255',
        'content' => 'nullable|string',
        'stock' => 'required|integer|min:0',
        'price' => 'required|numeric|min:0',
        'img' => 'required|image|max:2048',
        'poids' => 'nullable|integer|min:0',
        //'montant_tva' => 'nullable|numeric|min:0|max:100',
        'category_id' => 'required|exists:categories,id',
    ]);

    $post = new Post();
    $post->title = $validated['title'];
    $post->content = $validated['content'] ?? null;
    $post->slug = Str::slug($post->title);
    $post->stock = $validated['stock'];
    $post->price = $validated['price'];
    $post->poids = $validated['poids'] ?? null;
    // Calcul automatique de la TVA (6%)
    $post->montant_tva = round($post->price * 0.06, 2);
    $post->category_id = $validated['category_id'];

    if ($request->hasFile('img')) {
        $post->img = $request->file('img')->store('images', 'public');
    }

    $post->save();

    return redirect()->route('produits')->with('success', 'Produit ajouté avec succès.');
}


   public function edit($id)
{
    $posts = Post::findOrFail($id);
    $categories = Category::all(); // utile pour le <select>

    return view('produits.edit', compact('posts', 'categories', 'id'));
}
    public function update(Request $request, $id)
    {
        $posts = Post::find($id);

        $posts->title = $request->input('title');
        $posts->content = $request->input('content');
        $posts->slug = Str::slug($posts->title);
        $posts->stock = $request->input('stock');
        $posts->price = $request->input('price');

        if ($request->hasFile('img')) {
            $imgPath = $request->file('img')->store('images', 'public');
            $posts->img = $imgPath;
        }

        $posts->poids = $request->input('poids');
         $posts->montant_tva = round($posts->price * 0.06, 2);
        $posts->category_id = $request->input('category_id');

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

      public function updateBookToCart(Request $request, $id)
{
    // Corrige la recherche du produit : tu dois chercher par $id directement (pas $request->$id)
    $post = Post::findOrFail($id);

    // Récupère la quantité depuis le formulaire
    $qty = $request->input('qty'); // ou 'quantity' selon le nom de ton input

    // Récupère le panier dans la session (tableau)
    $cart = session()->get('cart', []);

    if (isset($cart[$id])) {
        // Met à jour la quantité dans le panier (attention au nom des clés)
        $cart[$id]['quantity'] = $qty;
    } else {
        // Si le produit n'existe pas dans le panier, on l'ajoute (optionnel ici)
        $cart[$id] = [
            "title" => $post->title,
            "quantity" => $qty,
            "price" => $post->price,
            "img" => $post->img
        ];
    }

    // Remet à jour la session
    session()->put('cart', $cart);

    return redirect()->back()->with('success', 'Quantité mise à jour');
}

public function bookCart()
{
    $cart = session()->get('cart', []);

    // Si l'utilisateur est connecté → on lui envoie ses infos et sa commande
    if (auth()->check()) {
        $client = auth()->user();
        $commande = Order::where('client_id', $client->id)->latest()->first();
        return view('cart', compact('cart', 'client', 'commande'));
    }

    // Sinon → juste afficher le panier (sans info client/commande)
    return view('cart', compact('cart'));
}
    public function checkout(Request $data)
    {

        if (auth()->check()) {

 $client = auth()->user();  // <--- Voilà l’étape qui manque !
/** @var \App\Models\Client $client */
        $client->adress = $data->input('adress');
        $client->phone = $data->input('phone');
        $client->save();

            $order = new Order();
            $order->status = "pending";
            $order->client_id = auth()->user()->id;
            $order->adress = $data->input('adress');
            $order->fullname = $data->input('fullname');
            $order->phone = $data->input('phone');

 // 💸 Calculer le total de la commande
        $cart = session()->get('cart', []);
        $total = 0;
        foreach ($cart as $item) {
            $price = floatval(str_replace(',', '.', $item['price']));
            $quantity = intval($item['quantity']);
            $total += $price * $quantity;
        }
        $order->price = $total;

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

                     // 💥 Diminue automatiquement le stock
        $product->stock -= $details['quantity'];
        $product->save();
                }
                 // 📧 Envoi de l'email au client
    $this->sendOrderInformation($order);
            }
                session()->forget('cart');

                return redirect('/')->with('success', 'Merci pour votre achat !');
        } else {
            return redirect()->route('login');
        }
    }

public function mescommandes(Request $request)
{
    $user = auth()->user();
    $status = $request->query('status'); // Récupère le paramètre GET 'status'

    $query = Order::query();

    // Admin peut voir toutes les commandes
    if (!$user->roles->contains('name', 'admin')) {
        $query->where('client_id', $user->id);
    }

    // Filtrer par status si défini
    if ($status) {
        $query->where('status', $status);
    }

    $orders = $query->with('client', 'orderItems')->latest()->get();

    return view('commandes', compact('orders'));
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
    public function categoryvie()
    {
        $categories = Category::all();
        return view('produits.category_2', compact('categories'));
    }
    public function changeStatus(Request $request, $id){
        $order = Order::findOrFail($id);
        $order->status=$request->status;
        $order->save();
        return redirect()->back();
    }
   public function updatecategory(Request $request, $id)
{
    $category = Category::findOrFail($id);
    $request->validate([
        'name' => 'required|string|max:255',
    ]);

    $category->catname = $request->input('name');
    $category->save();

    return redirect()->route('dashboard')->with('success', 'Catégorie modifiée avec succès');
}
public function editcategory($id)
{
    $category = Category::findOrFail($id);
    return view('produits.edit_category', compact('category'));
}
public function destroy($id)
{
$category = Category::findOrFail($id);
$category->delete();
return redirect('dashboard');
}
public function items($id)
{
    $order = Order::with('orderItems.product')->findOrFail($id);

    return view('items', compact('order'));
}
public function deleteBookTocart($id)
{
    $cart = session()->get('cart', []);

    if (isset($cart[$id])) {
        unset($cart[$id]);
        session()->put('cart', $cart);
    }

    return redirect()->back()->with('success', 'Article supprimé du panier.');
}

public function deleteComment($id)
{
    $comment = Comment::findOrFail($id);
    $comment->delete();

    return redirect()->back()->with('success', 'Commentaire supprimé avec succès.');
}
public function sendOrderInformation($order)
{
    // On récupère l'email du client lié à la commande
    $email = $order->client->email ?? null;

    if ($email) {
        Mail::to($email)->send(new OrderMail($order));
    }
}
public function updateStock(Request $request, $id)
{
    $request->validate([
        'stock' => 'required|integer|min:0',
    ]);

    $product = Post::findOrFail($id);
    $product->stock = $request->stock;
    $product->save();

    return redirect()->back()->with('success', 'Stock mis à jour avec succès.');
}
}
