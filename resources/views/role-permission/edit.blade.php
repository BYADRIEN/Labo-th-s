<form action="{{ route('permissions.update', $permission->id) }}" method="POST">
    @csrf
    @method('PUT')
    <!-- champs du formulaire -->
    <input type="text" name="name" placeholder="Permission name" required>
    <button type="submit">Modifier</button>
</form>
