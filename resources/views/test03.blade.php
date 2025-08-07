@extends('welcome')

@section('content')
<div class="" id="client" role="tabpanel" aria-labelledby="client-tab">
  <div class="card shadow-sm border-0">
    <div class="card-header bg-primary text-white">
      <h4 class="mb-0"><i class="bi bi-people-fill me-2"></i>Informations Clients</h4>
    </div>
    <div class="card-body">
      <p class="text-muted">Détails des clients enregistrés.</p>

      @if($clients->isEmpty())
        <p>Aucun client trouvé.</p>
      @else
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th>ID</th>
              <th>Nom</th>
              <th>Prénom</th>
              <th>Email</th>
                <th>Adresse</th>
                <th>Telephone</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            @foreach($clients as $client)
              <tr>
                <td>{{ $client->id }}</td>
                <td>{{ $client->nom }}</td>
                <td>{{ $client->prenom }}</td>
                <td>{{ $client->email }}</td>
                <td>{{ $client->adress }}</td>
                <td>{{ $client->phone }}</td>
                <td>
                  <a href="{{ route('client.edit', $client->id) }}" class="btn btn-sm btn-warning me-2">Éditer</a>
                  <form action="{{ route('delete_client', $client->id)}} " method="POST" style="display:inline-block;" onsubmit="return confirm('Confirmer la suppression ?');">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-sm btn-danger">Supprimer</button>
                  </form>
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      @endif

    </div>
  </div>
</div>
@endsection
