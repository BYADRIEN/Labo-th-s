<p>Roles</p>
<a href="{{ route('home') }}">retour</a>
@foreach($roles as $role)
    <p>{{ $role->id }}</p>
    <p>{{ $role->name }}</p>
    <a href="{{ url('roles/'.$role->id.'/edit') }}">Edit</a>

    <form action="{{ route('roles.destroy', $role->id) }}" method="POST">
        @csrf
        @method('DELETE')
        <button type="submit">Supprimer</button>
    </form>
@endforeach
<a href="{{ url('roles/create') }}">Add Roles</a>
