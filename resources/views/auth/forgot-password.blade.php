<form method="POST" action="{{ route('password.email') }}">
    @csrf

    <div>
        <label for="email">Adresse email :</label>
        <input type="email" id="email" name="email" value="{{ old('email') }}" required autofocus>
        @error('email')
        <span class="text-red-500">{{ $message }}</span>
        @enderror
    </div>

    <div>
        <button type="submit">Envoyer le lien de réinitialisation</button>
    </div>

    @if (session('status'))
        <div>
            {{ session('status') }}
        </div>
    @endif
</form>
