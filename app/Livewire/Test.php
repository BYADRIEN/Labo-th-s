<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Post;
use App\Models\Category;

class Test extends Component
{
    // Propriétés existantes pour le filtrage
    public ?int $categoryId = null;
    public ?string $query = '';
    public $categories;
    public $posts;

    // Propriété pour le compteur
    public $count = 0;

    // Test texte
    public $simpleText = '';

    public function increment()
    {
        $this->count++;
    }

    public function mount()
    {
        $this->categories = Category::all();
        $this->updatePosts();
    }

    public function updatedCategoryId()
    {
        $this->updatePosts();
    }

    public function updatedQuery()
    {
        $this->updatePosts();
    }

    public function updatePosts()
    {
        $queryBuilder = Post::query();

        if ($this->categoryId) {
            $queryBuilder->where('category_id', $this->categoryId);
        }

        if ($this->query) {
            $queryBuilder->where('title', 'like', '%' . $this->query . '%');
        }

        $this->posts = $queryBuilder->get();
    }

    public function render()
    {
        return view('livewire.test', [
            'categories' => $this->categories,
            'posts' => $this->posts,
            'count' => $this->count,
        ]);
    }
}