<?php

namespace App\Livewire;

use Livewire\Attributes\On;
use Livewire\Component;
use App\Models\Post;

class ShowPosts extends Component
{
    public $posts;

    public function mount()
    {
        $this->posts = Post::all();
    }

    #[On('reloadPosts')]
    public function reloadPosts($categoryId, $query)
    {
        $queryBuilder = Post::query();

        if ($categoryId) {
            $queryBuilder->where('category_id', $categoryId);
        }

        if ($query) {
            $queryBuilder->where('title', 'like', '%' . $query . '%');
        }

        $this->posts = $queryBuilder->get();
    }

    public function render()
    {
        return view('livewire.show-posts');
    }
}