<?php

use App\Http\Controllers;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ShoppingController;
use Illuminate\Support\Facades\Route;

Route::get('/',Controllers\HomeController::class)->name('home'); 

Route::middleware(['auth', 'verified', 'admin'])->group(function () {
    Route::get('/dashboard', DashboardController::class)->name('dashboard');    
    
    // route resource products
    Route::resource('products',ProductController::class);
    Route::get('/products/{product}/changeimage',[ProductController::class, 'changeImage'])->name('products.changeimage');
    Route::post('/products/{product}/updateimage',[ProductController::class, 'updateImage'])->name('products.updateimage');

    // route resource category
    Route::resource('categories',CategoryController::class);
    
    //route resource article
    Route::resource('articles',ArticleController::class);

});

// route shopping 
Route::middleware(['auth', 'verified'])->group(function () {
    
});

// route resource article untuk user biasa
Route::middleware(['auth', 'verified'])->group(function () {
    Route::resource('articles', ArticleController::class)->only(['show']);
    Route::resource('shopping', ShoppingController::class)->only([
        'index', 'show', 'create', 'store', 'edit', 'update', 'destroy'
    ]);
});

// route middleware yang hanya boleh diakses jika user sudah login
Route::middleware('auth')->group(function () {
    Route::get('/profile', [Controllers\ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [Controllers\ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [Controllers\ProfileController::class, 'destroy'])->name('profile.destroy');    
});

require __DIR__.'/auth.php';