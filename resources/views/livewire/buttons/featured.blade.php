<button wire:click="$set('featured', {{ $featured ? 'false' : 'true' }})"
        class="btn {{ $featured ? 'btn-success' : 'btn-outline-secondary' }}">
    @if($featured)
        <i class="fas fa-eye"></i> Visible
    @else
        <i class="fas fa-mask"></i> Masquer
    @endif
</button>