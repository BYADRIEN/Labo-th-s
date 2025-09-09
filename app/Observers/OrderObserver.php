<?php

namespace App\Observers;

use App\Models\Order;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderReadyMail;

class OrderObserver
{
    public function created(Order $order): void
    {
        // Rien à faire à la création
    }

    public function updated(Order $order): void
    {
        // Log pour tracer toutes les mises à jour
        \Log::info('Observer déclenché pour order '.$order->id.' avec status '.$order->status);

        // On ne fait quelque chose que si le statut a changé
        if ($order->wasChanged('status')) {

            $oldStatus = $order->getOriginal('status'); // statut avant la mise à jour
            $newStatus = $order->status;

            // Envoi mail si la commande est complétée
            if ($newStatus === 'completed' && $order->client && $order->client->email) {
                Mail::to($order->client->email)->send(new OrderReadyMail($order));
            }

            // Restock si la commande est annulée et que ça n'a pas encore été fait
            if ($newStatus === 'cancelled' && $oldStatus !== 'cancelled' && !$order->restocked_at) {
                foreach ($order->orderItems as $item) {
                    $product = $item->product;
                    if ($product) {
                        \Log::info('Produit ID: '.$product->id.' | Stock avant: '.$product->stock.' | Quantité à ajouter: '.$item->quantity);

                        // Ajouter la quantité annulée
                        $product->increment('stock', $item->quantity);

                        \Log::info('Produit ID: '.$product->id.' | Stock après: '.$product->stock);
                    } else {
                        \Log::warning('Produit non trouvé pour orderItem '.$item->id);
                    }
                }
                // Marquer la commande comme restockée
                $order->restocked_at = now();
                $order->saveQuietly(); // évite de relancer l'observer
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