<h2>Détails de la commande n°{{ $order->id }}</h2>

<table>
    <thead>
        <tr>
            <th>Nom produit</th>
            <th>Quantité</th>
            <th>Prix unitaire</th>
        </tr>
    </thead>
    <tbody>
        @foreach($order->orderItems as $item)
            <tr>
                <td>{{ $item->product->title ?? 'Nom non dispo' }}</td>
                <td>{{ $item->quantity }}</td>
<td>{{ number_format((float) $item->price, 2, ',', ' ') }} €</td>
            </tr>
        @endforeach
    </tbody>
</table>