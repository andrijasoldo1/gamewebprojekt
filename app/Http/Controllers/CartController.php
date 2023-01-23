<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function addToCart(Request $request)
    {
        if (!Auth::check()) {
            return redirect('/login');
        }

        if ($request->has('logout')) {
            Auth::logout();
            return redirect('/login');
        }

        if ($request->has('add_to_cart')) {
            $product_name = $request->input('product_name');
            $product_price = $request->input('product_price');
            $product_image = $request->input('product_image');
            $product_quantity = $request->input('product_quantity');

            $user_id = Auth::id();

            $cart = Cart::where('name', $product_name)->where('user_id', $user_id)->first();

            if ($cart) {
                return back()->with('message', 'product already added to cart!');
            } else {
                $cart = new Cart();
                $cart->user_id = $user_id;
                $cart->name = $product_name;
                $cart->price = $product_price;
                $cart->image = $product_image;
                $cart->quantity = $product_quantity;
                $cart->save();

                return back()->with('message', 'product added to cart!');
            }
        }
    }
}