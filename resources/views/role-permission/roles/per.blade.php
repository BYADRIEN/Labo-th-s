<form method="POST" action="{{ route('roles.give-permissions', $role->id) }}">
    @csrf
    @method('PUT') <!-- 🔧 Cette ligne est indispensable -->

    <!-- Exemple de permissions -->
    @foreach($permissions as $permission)
        <label>
            <input type="checkbox" name="permissions[]" value="{{ $permission->id }}"
                {{ $role->permissions->contains($permission->id) ? 'checked' : '' }}>
            {{ $permission->name }}
        </label>
    @endforeach

    <button type="submit">Donner permissions</button>
</form>
