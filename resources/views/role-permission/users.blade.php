<p>users</p>
<a href="{{ route('home') }}">retour</a>
@foreach($clients as $client)
    <p>{{ $client->id }}</p>
    <p>{{ $client->name }}</p>
    <p>{{ $client->email }}</p>
    {{ $client->roles->first()->name ?? 'Aucun rôle' }}

    <a href="{{ route('admin.users.editRoleForm', $client->id) }}">Modifier rôle</a>
@endforeach
