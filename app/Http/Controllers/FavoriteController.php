<?php

namespace App\Http\Controllers;

use App\Models\Favorite;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function index()
    {
        // Count the number of favorite items for the authenticated user
        $favoritesCount = Favorite::where('user_id', auth()->id())->count();

        // Fetch the list of favorites
        $favorites = Favorite::where('user_id', auth()->id())->get();

        return view('pelanggan.page.favorites', compact('favorites', 'favoritesCount'));
    }





    public function storePelanggan($productId)
    {
        // Check if the user is logged in
        if (!auth()->check()) {
            return redirect()->route('login')->with('error', 'You need to log in first.');
        }

        // Retrieve the product by its ID
        $product = Product::findOrFail($productId);

        // Check if the product is already in the user's favorites
        if (auth()->user()->favorites()->where('product_id', $product->id)->exists()) {
            return back()->with('error', 'This product is already in your favorites.');
        }

        // Create a new favorite
        $favorite = new Favorite();
        $favorite->user_id = auth()->id(); // Assuming a `user_id` column exists in `favorites`
        $favorite->product_id = $product->id; // Set the `product_id`
        $favorite->save();

        return back()->with('success', 'Product added to favorites!');
    }



    public function destroy($id)
    {
        $favorite = Favorite::findOrFail($id);
        $favorite->delete();
        return redirect()->route('favorites.index')->with('success', 'Item removed from favorites!');
    }
}
