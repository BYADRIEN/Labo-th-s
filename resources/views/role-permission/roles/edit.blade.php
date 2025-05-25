
<form action="{{ route('roles.update', $role->id) }}" method="POST">
    @csrf
    @method('PUT')

    <input type="text" name="name" placeholder="Role name" value="{{ old('name', $role->name) }}" required>

    @error('name')
    <div class="error" style="color: red;">{{ $message }}</div>
    @enderror

    <button type="submit">Modifier le rôle</button>
</form>
