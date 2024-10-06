<h1>login</h1>

<form method="post" action="{{ route("login.post") }}">
   @csrf
<div class="mb-3">
    <label for="formGroupExampleInput" class="form-label">enter email</label>
    <input type="email" name="email" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">
    @if($errors->has('email'))
        <span>{{ $errors->first('email') }}</span>
    @endif
</div>
<div class="mb-3">
    <label for="formGroupExampleInput2" class="form-label">enter password</label>
    <input type="password" name="password" class="form-control" id="formGroupExampleInput2" placeholder="Another input placeholder">
</div>
    <input type="submit" name="login" value="login">
</form>
<a href="{{ route('about') }}">retour</a>
