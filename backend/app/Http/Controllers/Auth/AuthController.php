<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        if ($request->has('submit')) {
            $email = $request->input('email');
            $password = $request->input('password');

            $user = User::where('email', $email)->first();

            if (!$user || !Hash::check($password, $user->password)) {
                return back()->with('message', 'incorrect email or password!');
            }

            Auth::login($user);

            return redirect('index');
        }
    }
    public function register(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);

        $user = User::create([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']),
        ]);

        auth()->login($user);

        return redirect()->route('login');
    }
}
