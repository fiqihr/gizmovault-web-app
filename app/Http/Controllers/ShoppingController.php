<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Cart;
use Illuminate\Support\Facades\Auth;

class ShoppingController extends Controller
{
    // Menampilkan daftar produk
    public function index()
    {
        $products = Product::all();
        return view('shopping.index', compact('products'));
    }

    // Menampilkan detail produk
    public function show($id)
    {
        $product = Product::findOrFail($id);
        return view('shopping.show', compact('product'));
    }
    
    

    // Menambahkan produk ke keranjang
    public function store(Request $request)
    {
        $request->validate([
            'product_id' => 'required|exists:products,id',
            'quantity' => 'required|integer|min:1',
        ]);

        Cart::create([
            'user_id' => Auth::id(),
            'product_id' => $request->product_id,
            'quantity' => $request->quantity,
        ]);

        return redirect()->route('shopping.index')->with('success', 'Product added to cart.');
    }

    // Menampilkan keranjang belanja
    public function create()
    {
        $cartItems = Cart::where('user_id', Auth::id())->get();
        return view('shopping.cart', compact('cartItems'));
    }

    // Menghapus produk dari keranjang
    public function destroy($id)
    {
        $cart = Cart::findOrFail($id);        
        $cart->delete();
        return redirect()->route('shopping.create')->with('success', 'Product removed from cart.');
    }

    // Mengupdate jumlah produk dalam keranjang
    public function update(Request $request, $id)
    {
        $cart = Cart::findOrFail($id);

        $request->validate([
            'quantity' => 'required|integer|min:1',
        ]);

        $cart->update([
            'quantity' => $request->quantity,
        ]);

        return redirect()->route('shopping.create')->with('success', 'Cart updated.');
    }


    // Proses checkout
    public function checkout()
    {
        // Implementasi proses checkout belum di buat
    }
}