

<button wire:click="toggleLike()" class="like-button border-0 bg-transparent d-flex align-items-center" aria-label="J'aime ce produit" title="J'aime ce produit">
    <svg xmlns="http://www.w3.org/2000/svg"
         width="24"
         height="24"
         viewBox="0 0 24 24"
         stroke-width="2"
         fill="{{ Auth::user()?->hasLiked($post) ? 'red' : 'none' }}"
         stroke="{{ Auth::user()?->hasLiked($post) ? 'red' : 'currentColor' }}"
         class="transition-all duration-200 me-1">
        <path stroke-linecap="round" stroke-linejoin="round" d="M21 8.25c0-2.485-2.009-4.5-4.5-4.5-1.688 0-3.09.795-3.938 2.025C11.59 4.545 10.188 3.75 8.5 3.75 6.009 3.75 4 5.765 4 8.25c0 3.641 3.374 6.803 8.55 11.204a.75.75 0 00.9 0C17.626 15.053 21 11.891 21 8.25z" />
    </svg>
    <span>{{ $post->likes()->count() }}</span>
</button>
