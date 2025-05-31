<h1>Modifier le rôle de {{ $user->name }}</h1>

<form action="{{ route('admin.users.updateRole', $user->id) }}" method="POST">
    @csrf
    @method('PUT')

    <label for="role_id">Rôle</label>
    <select name="role_id" id="role_id" required>
        @foreach($roles as $role)
            <option value="{{ $role->id }}" {{ $user->roles->first()?->id == $role->id ? 'selected' : '' }}>
                {{ $role->name }}
            </option>
        @endforeach
    </select>

    <button type="submit">Mettre à jour</button>
</form>

<a href="{{ route('users.index') }}">Retour à la liste des utilisateurs</a>
