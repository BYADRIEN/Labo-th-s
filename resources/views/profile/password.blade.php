@extends('welcome')
<h1>Change Password</h1>

<form method="POST" action="{{ route('user-password.update') }}">
    @csrf
    @method('PUT')

    <div>
        <label for="current_password">Current Password</label>
        <input id="current_password" type="password" name="current_password" required>
    </div>

    <div>
        <label for="password">New Password</label>
        <input id="password" type="password" name="password" required>
    </div>

    <div>
        <label for="password_confirmation">Confirm New Password</label>
        <input id="password_confirmation" type="password" name="password_confirmation" required>
    </div>

    <div>
        <button type="submit">Update Password</button>
    </div>
</form>
