<p>Create permissions</p>
<form action="{{ url('permissions') }}" method="POST">
    <p>Permission name</p>
    <input type="text" name="name">
    <button type="submit">save</button>

</form>
<form action="{{ route('permissions.store') }}" method="POST">
    @csrf
    <input type="text" name="name" placeholder="Permission name" required>
    <button type="submit">Create</button>
</form>
<form action="{{ route('roles.store') }}" method="POST">
    @csrf
    <input type="text" name="name" placeholder="Role name" required>
    <button type="submit">Create Role</button>
</form>
