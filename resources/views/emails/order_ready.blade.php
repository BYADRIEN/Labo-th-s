@component('mail::message')
# Bonjour {{ $order->fullname }},

Votre commande **#{{ $order->id }}** est maintenant **prête** !

Vous avez 5 jours pour revenir chercher votre commande sinon elle sera remise en stock 

Merci pour votre confiance,  
**L'équipe**
@endcomponent