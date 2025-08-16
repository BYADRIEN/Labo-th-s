@extends('welcome')

@section('content')
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-success text-white">
            <h4 class="mb-0">Mes Commandes</h4>
        </div>
        <div class="card-body">
            @if(isset($orders) && $orders->isNotEmpty())
                <div class="table-responsive">
                    <table class="table table-hover table-striped">
                        <thead class="bg-light">
                            <tr>
                                <th scope="col">Commande</th>
                                <th scope="col">État</th>
                                <th scope="col">Date</th>
                                <th scope="col">Détails</th>
                                <th scope="col">Adresse</th>
                                <th scope="col">Fullname</th>
                                 <th scope="col">Telephone</th>
                                 <th scope="col">Prix</th>
                                @role('admin')
                                <th scope="col">Action</th>
                                @endrole
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($orders as $index => $commande)
                                <tr>
                                    <th scope="row">#{{ $commande->id }}</th>
                                    <td>
                                        @php
                                            $statusClass = '';
                                            switch($commande->status) {
                                                case 'pending':
                                                    $statusClass = 'badge bg-warning text-dark';
                                                    break;
                                                case 'approved':
                                                    $statusClass = 'badge bg-info';
                                                    break;
                                                case 'shipped':
                                                    $statusClass = 'badge bg-primary';
                                                    break;
                                                case 'completed':
                                                    $statusClass = 'badge bg-success';
                                                    break;
                                                case 'cancelled':
                                                    $statusClass = 'badge bg-danger';
                                                    break;
                                                default:
                                                    $statusClass = 'badge bg-secondary';
                                            }
                                        @endphp
                                        <span class="{{ $statusClass }}">{{ ucfirst($commande->status) }}</span>
                                    </td>
                                    <td>{{ $commande->created_at->format('d/m/Y H:i') }}</td>
                                    <td>
<a href="{{ route('orders.items', $commande->id) }}" class="btn btn-sm btn-outline-info">Voir</a>
                                    </td>
                                    <td>
                                        {{ $commande->adress }}
                                    </td>
                                    <td>
                                        {{ $commande->fullname }}
                                    </td>
                                    <td>
                                        {{ $commande->phone }}
                                    </td>
                                    <td>
                                        {{ $commande->price}} €
                                    </td>
                                    @role('admin')
                                    <td>
                                              <form action="{{ route('admin.change_status', $commande->id)}}" method="post">
    @csrf
    <select name="status" @if($commande->status === 'cancelled') disabled @endif>
        <option value="pending" {{ $commande->status == 'pending' ? 'selected' : '' }}>Pending</option>
        <option value="approved" {{ $commande->status == 'approved' ? 'selected' : '' }}>Approved</option>
        <option value="shipped" {{ $commande->status == 'shipped' ? 'selected' : '' }}>Shipped</option>
        <option value="completed" {{ $commande->status == 'completed' ? 'selected' : '' }}>Completed</option>
        <option value="cancelled" {{ $commande->status == 'cancelled' ? 'selected' : '' }}>Cancelled</option>
    </select>
    <input type="submit" name="submit" value="submit" 
           onclick="return confirm('Are you sure?')" 
           @if($commande->status === 'cancelled') disabled @endif>
</form>
                                    @endrole
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <div class="alert alert-info" role="alert">
                    Vous n'avez pas encore passé de commande ou vous n'êtes pas connecté.
                </div>
            @endif
        </div>
        <div class="card-footer text-end">
            <a href="{{ route('produits') }}" class="btn btn-secondary">Retour aux produits</a>
        </div>
    </div>
</div>
@endsection