<p>Roles</p>
<a href="{{ route('home') }}">retour</a>
@foreach($permissions as $permission)
    <p>{{ $permission->id }}</p>
    <p>{{ $permission->name }}</p>
    <a href="{{ url('permissions/'.$permission->id.'/edit') }}">Edit</a>

    <form action="{{ route('permissions.destroy', $permission->id) }}" method="POST">
        @csrf
        @method('DELETE')
        <button type="submit">Supprimer</button>
    </form>
@endforeach
<a href="{{ url('permissions/create') }}">Add permissions</a>
