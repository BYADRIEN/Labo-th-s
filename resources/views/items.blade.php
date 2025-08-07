@extends('welcome')

@section('content')
<div class="container py-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h2 class="card-title text-center mb-4">🫖 Détails de la commande n°{{ $order->id }}</h2>

            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle text-center">
                    <thead class="table-success">
                        <tr>
                            <th>Nom du produit</th>
                            <th>Quantité</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order->orderItems as $item)
                            <tr>
                                <td>{{ $item->product->title ?? 'Nom non dispo' }}</td>
                                <td>{{ $item->quantity }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="text-center mt-4">
                <a href="{{ route('commandes')}}" class="btn btn-outline-success">
                    ← Retour à mes commandes
                </a>
            </div>
        </div>
    </div>
</div>
@endsection