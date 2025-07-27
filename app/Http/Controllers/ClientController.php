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
use Spatie\Permission\Models\Role;

class ClientController extends Controller
{

    public function index()
    {
        $posts = Post::all();
        return view('registration', compact('posts'));
        /* la fonction compact équivaut à array('posts' => $posts) */
    }

    public function login()
    {
        return view('connexion');

    }

    public function loginPost(Request $request)
    {
        $request->validate([
            "email" => "required",
            "password" => "required"
        ]);
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            return redirect()->intended(route('home'));
        }
        return redirect(route("login"))->with("error", "Email ou mot de passe incorrect");
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

    public function indexindex()
    {
        $clients = Client::get();
        return view('role-permission.users', ['clients' => $clients]);
    }

    //public function index()
    //{
     //  $users = User::with('role'); // Charge les rôles pour chaque utilisateur
     //  return view('admin.users.index', compact('users'));
   // }

    /**
     * Affiche le formulaire pour modifier le rôle d'un utilisateur spécifique.
     *
     * @param \App\Models\User $user
     * @return \Illuminate\View\View
     */
    public function editRoleForm($id)
    {
        $user = Client::findOrFail($id);

        // Récupère les rôles disponibles pour l’assignation
        $roles = Role::all();

        return view('role-permission.roles.role', compact('user', 'roles'));
    }

    /**
     * Met à jour le rôle d'un utilisateur spécifique.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\User $user
     * @return \Illuminate\Http\RedirectResponse
     */

    public function updateRole(Request $request, $userId)
    {
        $request->validate([
            'role_id' => ['required', 'exists:roles,id'],
        ]);

        $user = Client::findOrFail($userId);
        $role = Role::findOrFail($request->role_id);

        // Remplace les rôles actuels par le nouveau rôle choisi
        $user->syncRoles($role);

        return redirect()->route('users.index')->with('success', 'Rôle mis à jour avec succès.');
    }
}
