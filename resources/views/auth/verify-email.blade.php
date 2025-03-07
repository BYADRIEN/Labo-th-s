
@section('content')
    <h1>Vérifiez votre email</h1>
    <p>
        Merci de vous être inscrit ! Nous avons envoyé un email de vérification à votre adresse.
        Cliquez sur le lien dans l'email pour activer votre compte.
    </p>
    <p>Si vous n'avez pas reçu l'email, vous pouvez demander un nouvel envoi :</p>
    <form action="{{ route('verification.send') }}" method="POST">
        @csrf
        <button type="submit">Renvoyer l'email</button>
    </form>
@endsection
