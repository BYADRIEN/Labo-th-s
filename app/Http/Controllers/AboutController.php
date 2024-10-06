<?php

namespace App\Http\Controllers;

use App\Models\Post;

class AboutController extends Controller {

    public function index(){

        return view('about');
        /* la fonction compact équivaut à array('posts' => $posts) */
    }

    public function __construct()
    {
        $this->middleware('auth')->except('index');
    }
}
