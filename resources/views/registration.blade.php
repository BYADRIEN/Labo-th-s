@extends('welcome')

<h1>Registration Form</h1>
<form action='/test/traitement' method="post">
    @csrf
    <fieldset>
        <label>Enter Your email <input type="email" name="email" required /></label>
        <label>Create a New Password: <input type="password" name="password" required /></label>
        <label>Enter Your Surname <input type="text" name="nom" required /></label>
        @error('name')
        <span class="invalid-feedback" role="alert">{{ @$message }}</span>
        @enderror
        <label>Enter Your name <input type="text" name="prenom" required /></label>
    </fieldset>
    <input type="submit" value="Submit" />
</form>
@if(session('status'))
    <a href="#">{{ session('status') }}</a>
@endif
<a href="{{ route('home') }}">retour</a>
