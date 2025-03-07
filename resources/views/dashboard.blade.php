@extends('welcome')
<h1>Welcome to the Dashboard</h1>

@auth('client')
    <button>Je suis connecté</button>
@else
    <button>Je ne suis pas connecté</button>
@endauth

@role('admin')
Je suis un admin
<a href="">admin</a>
@endrole

@if(Auth::guard('client')->check())
    {{ Auth::guard('client')->user()->name }}
@endif
{{ auth()->user()->nom }} {{ auth()->user()->prenom }}

<p>New Post ( produits )</p>
<p>Commentaires
<p>Like</p>
<p>informations du client</p>
<p>user</p>
<p>stock ?</p>

<a href="{{ route('home') }}">Retour</a>

