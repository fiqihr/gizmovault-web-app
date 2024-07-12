<?php

namespace App\Http\Controllers;
use Carbon\Carbon;


use App\Models\Article;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $articles = Article::with('products')->orderBy('id', 'desc')->get();
        return view('home', compact('articles'));
    }
}