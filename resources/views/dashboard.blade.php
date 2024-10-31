<!-- resources/views/dashboard.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<h1>Welcome to the Dashboard</h1>
<!-- Si l'utilisateur est connecté -->
@auth
    <button>Je suis connecté</button>
@else
    <button>Je ne suis pas connecté</button>
@endauth

<!-- Si l'utilisateur n'est pas connecté -->
@guest
    <button>Je ne suis pas connecté</button>
@else
    <button>Je suis connecté</button>
@endguest
<a href="{{ route('home') }}">retour</a>
</body>
</html>
