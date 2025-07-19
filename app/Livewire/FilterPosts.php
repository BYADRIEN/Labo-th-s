<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Post;
use App\Models\Category;

class FilterPosts extends Component
{
    public ?int $category_id = null;
    public ?string $query = null;

    public function render()
    {
        $categories = Category::all();

        $posts = Post::query()
            ->when($this->category_id, fn($query) => $query->where('category_id', $this->category_id))
            ->when($this->query, fn($query) => $query->where('title', 'like', '%' . $this->query . '%'))
            ->get();

        return view('livewire.filter-posts', compact('categories', 'posts'));
    }
}