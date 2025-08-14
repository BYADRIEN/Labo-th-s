@component('mail::message')
# Bonjour {{ $order->fullname }},

Votre commande **#{{ $order->id }}** est maintenant **prête** !

Adresse de livraison :  
{{ $order->adress }}

Merci pour votre confiance,  
**L'équipe**
@endcomponent