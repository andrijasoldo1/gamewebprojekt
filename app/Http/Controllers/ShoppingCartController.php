<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Auth;

class ShoppingCartController extends Controller
{
    public function addToCart(Request $request)
    {
        $product_name = $request->input('product_name');
        $product_price = $request->input('product_price');
        $product_image = $request->input('product_image');
        $product_quantity = $request->input('product_quantity');

        $select_cart = DB::table('cart')
            ->where('name', $product_name)
            ->where('user_id', Auth::user()->id)
            ->first();

        if ($select_cart) {
            return back()->with('message', 'product already added to cart!');
        } else {
            DB::table('cart')->insert([
                'user_id' => Auth::user()->id,
                'name' => $product_name,
                'price' => $product_price,
                'image' => $product_image,
                'quantity' => $product_quantity
            ]);
            return back()->with('message', 'product added to cart!');
        }
    }
}
