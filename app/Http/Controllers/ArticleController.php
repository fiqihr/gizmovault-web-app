<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Product;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function index()
    {
        $articles = Article::with('products')->get();
        return view('articles.index', compact('articles'));
    }

    public function create()
    {
        $products = Product::all();
        return view('articles.create', compact('products'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'product_ids' => 'required|array',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
    
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images', 'public');
        }
    
        $article = Article::create([
            'title' => $request->title,
            'content' => $request->content,
            'image' => $imagePath,
        ]);
        $article->products()->attach($request->product_ids);
    
        return redirect()->route('articles.index')->with('success', 'Article created successfully.');
    
    }

    public function show($id)
    {
        $article = Article::with('products')->findOrFail($id);
        return view('articles.show', compact('article'));
    }

    public function edit($id)
    {
        $article = Article::with('products')->findOrFail($id);
        $products = Product::all();
        return view('articles.edit', compact('article', 'products'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'product_ids' => 'required|array',
        ]);

        $article = Article::findOrFail($id);
        $article->update($request->only('title', 'content'));
        $article->products()->sync($request->product_ids);

        return redirect()->route('articles.index')->with('success', 'Article updated successfully.');
    }

    public function destroy($id)
    {
        $article = Article::findOrFail($id);
        $article->products()->detach();
        $article->delete();

        return redirect()->route('articles.index')->with('success', 'Article deleted successfully.');
    }
}