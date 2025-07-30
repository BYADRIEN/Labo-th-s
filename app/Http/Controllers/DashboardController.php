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
    public function edit(Comment $comment){
    return view('produits.edit_comment', compact('comment'));
}
public function update(Request $request, Comment $comment)
{
    $request->validate([
        'body' => 'required|string',
    ]);

    $comment->body = $request->body;
    $comment->save();

    return redirect()->route('dashboard')->with('success', 'Commentaire mis à jour.');
}
public function destroy( Comment $comment)
{
$comment->delete();
return redirect('dashboard');
}
public function updateClient($id)
{
  $client = Client::find($id);
return view('profile.edit_client', compact('client'));
}
public function updateClientTraitement(Request $request)
{$request->validate([
    'id' => 'required|exists:client,id',
    'nom' => 'required',
    'prenom' => 'required',
    'email' => 'required|email',
]);
$client = Client::find($request->id);
$client->nom = $request->nom;
$client->prenom = $request->prenom;
$client->email = $request->email;
$client->update();
return redirect('dashboard');
}
public function destroyClient($id)
{
    $client = Client::find($id);
    if ($client) {
        $client->delete();
    }
    return redirect('dashboard');
}
}