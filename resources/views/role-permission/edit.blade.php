@extends('welcome')

@section('content')

<div class="container my-5" style="max-width: 400px;">
    <h2 class="mb-4">Modifier la permission</h2>

    <form action="{{ route('permissions.update', $permission->id) }}" method="POST" class="card p-4 shadow-sm border-0">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="permission_name" class="form-label">Nom de la permission</label>
            <input 
                type="text" 
                id="permission_name" 
                name="name" 
                class="form-control" 
                placeholder="Nom de la permission" 
                value="{{ old('name', $permission->name) }}" 
                required>
        </div>

        <button type="submit" class="btn btn-warning w-100">
            Modifier
        </button>
    </form>
</div>
@endsection