<?php

namespace App\Http\Controllers;
use App\Models\Post;
use App\Models\User;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Auth\Authenticatable;
class ClientController extends Controller {

    public function index(){
        $posts=Post::all();
        return view('registration', compact('posts'));
        /* la fonction compact équivaut à array('posts' => $posts) */
    }
    public function login(){
        return view('connexion');

    }
    public function loginPost(Request $request){
    $request->validate([
        "email"=>"required",
        "password"=>"required"
    ]);
    $credentials = $request->only('email', 'password');
    if (Auth::attempt($credentials)) {
        return redirect()->intended(route('about'));
    }
    return redirect(route("login"))->with("error","Email ou mot de passe incorrect");
    }
    public function traitement_register(Request $request)
    {
        $request->validate([
            'email' => 'email|required|unique:client',
            'password' => 'required|min:8',
            'nom' => 'required',
            'prenom' => 'required',
        ]);
        $client = new Client();
        $client->email = $request->input('email');
        $client->password = bcrypt($request->input('password'));
        $client->nom = $request->input('nom');
        $client->prenom = $request->input('prenom');
        $client->save();
        $client->sendEmailVerificationNotification();
        return redirect('test/register')->with('status', 'Votre compte a bien été créé');
        //return redirect()->route('verification.notice')->with('status', 'Inscription réussie ! Veuillez vérifier votre email.');
    }
    public function sendEmailVerificationNotification()
    {
        try {
            $this->notify(new \Illuminate\Auth\Notifications\VerifyEmail());
            \Log::info("Email de vérification envoyé à : " . $this->email);
        } catch (\Exception $e) {
            \Log::error("Erreur lors de l'envoi de l'email de vérification : " . $e->getMessage());
        }
    }
}
