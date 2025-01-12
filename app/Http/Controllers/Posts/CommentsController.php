<?php

namespace App\Http\Controllers\Posts;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    //
    public function store(Post $post)
    {
        Comment::create([
            'user_id' => auth()->id(),
            'post_id' => $post->id,
            'body' => request('body')
        ]);
        return back();
    }
}
