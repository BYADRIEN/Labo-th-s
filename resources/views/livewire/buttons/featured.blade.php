
<button wire:click="$set('featured', {{ $featured ? 'false' : 'true' }})"
        class="btn {{ $featured ? 'btn-success' : 'btn-outline-secondary' }}">
    {{ $featured ? 'En vedette' : 'Mettre en vedette' }}
</button>