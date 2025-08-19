@extends('welcome')

@section('content')
<div class="container mt-5">
    <div class="card shadow-lg p-4">
        <h2 class="mb-4 text-center">📩 Contact Us</h2>

        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ route('contact.send') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Nom</label>
                <input type="text" name="name" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="subject" class="form-label">Sujet</label>
                <input type="text" name="subject" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <textarea name="message" rows="5" class="form-control" required></textarea>
            </div>

            <button type="submit" class="btn btn-success w-100">Envoyer</button>
        </form>
    </div>
</div>
@endsection