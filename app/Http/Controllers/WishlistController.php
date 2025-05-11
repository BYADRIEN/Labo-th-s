<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Client;
use Illuminate\Support\Facades\Auth;
use Dive\Wishlist\Facades\Wishlist;
use Illuminate\Support\Str; // Ajoute cette ligne en haut de ton fichier

class WishlistController extends Controller
{
    // Affiche les produits dans la wishlist de l'utilisateur connecté
    public function index()
    {
        if (Auth::check()) {
            $client = Auth::user();  // Récupère l'utilisateur connecté (ici un Client)
            $items = $client->posts;  // Utilise la relation définie pour obtenir les posts

            //dd($items); // Affiche les items récupérés pour voir s'ils existent
        } else {
            return redirect()->route('login')->with('error', 'Vous devez être connecté pour voir votre wishlist.');
        }

        return view('wishlist.index', compact('items'));
    }

    // Ajoute un produit à la wishlist
    public function add(Post $post)
    {
        $user = Auth::user();

        if (!$user) {
            return redirect()->route('login')->with('error', 'Vous devez être connecté.');
        }

        // Vérifier si le produit est déjà dans la wishlist
        if ($user->posts->contains($post)) {
            return back()->with('info', 'Ce produit est déjà dans votre wishlist.');
        }

        // Générer un UUID pour l'enregistrement dans la table pivot
        $uuid = (string) Str::uuid();

        // Ajouter le produit à la wishlist avec l'UUID généré
        $user->posts()->attach($post->id, ['uuid' => $uuid, 'user_id' => $user->id,   'wishable_id' => $post->id, 'wishable_type' => Post::class,'scope' => 'default',]);


        return redirect()->route('wishlist.index')->with('success', 'Produit ajouté à votre wishlist.');
    }
    // Supprime un produit de la wishlist
    public function remove(Post $post)
    {
        $user = Auth::user();
        // Supprime le produit de la wishlist du client
        $user->posts()->detach($post->id);

        return back()->with('success', 'Produit supprimé de votre wishlist.');
    }
}
