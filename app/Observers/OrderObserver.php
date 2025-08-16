<?php

namespace App\Observers;

use App\Models\Order;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderReadyMail;

class OrderObserver
{
    public function created(Order $order): void
    {
        //
    }

    public function updated(Order $order): void
    {
        // Log pour tracer toutes les mises à jour
        \Log::info('Observer déclenché pour order '.$order->id.' avec status '.$order->status);

        if ($order->wasChanged('status')) {

            // Envoi mail si la commande est complétée
            if ($order->status === 'completed' && $order->client && $order->client->email) {
                Mail::to($order->client->email)->send(new OrderReadyMail($order));
            }

            // Restock si la commande est annulée
            if ($order->status === 'cancelled') {
                foreach ($order->orderItems as $item) {
                    $product = $item->product; // ✅ utilise la bonne relation
                    if ($product) {
                        \Log::info('Produit '.$product->id.' stock avant: '.$product->stock.', ajout: '.$item->quantity);
                        $product->stock += $item->quantity;
                        $product->save();
                    } else {
                        \Log::warning('Produit non trouvé pour orderItem '.$item->id);
                    }
                }
            }
        }
    }

    public function deleted(Order $order): void
    {
        //
    }

    public function restored(Order $order): void
    {
        //
    }

    public function forceDeleted(Order $order): void
    {
        //
    }
}