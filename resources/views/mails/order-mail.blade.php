<p>Hi {{ $order->fullname }}</p>
<p>Your order was successful!</p>

<table border="1" cellpadding="8" cellspacing="0">
    <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price (€)</th>
        </tr>
    </thead>
    <tbody>
        @foreach($order->orderItems as $item)
            <tr>
                <td>
                    @if($item->product->img)
                        <img src="{{ asset('storage/' . $item->product->img) }}" alt="{{ $item->product->title }}" width="50">
                    @else
                        No image
                    @endif
                </td>
                <td>{{ $item->product->title }}</td>
                <td>{{ $item->quantity }}</td>
                <td>{{ number_format($item->price, 2, ',', ' ') }} €</td>
            </tr>
            <p><strong>Total : </strong>{{ number_format($order->price, 2, ',', ' ') }} €</p>
        @endforeach
    </tbody>
</table>