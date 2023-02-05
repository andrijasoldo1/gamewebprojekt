<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

$conn = DB::connection();
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::view('/','welcome');
Route::view('/index','index');
Route::view('/prvastranica','prvastranica');
Route::view('/drugastranica','drugastranica');
Route::view('/login','login');
Route::view('/register','register');
Route::view('/kosarica','kosarica');
Route::view('/korisnici','korisnici');
Route::view('/editor','editor');

    /*Route::get('/',function(){
    \Illuminate\Support\Facades\DB::connection('mysql::write')->select();  )
    \App\Models\User::on('mysql::write')
    return view('welcome')
   */
Route::group(['middleware' => ['auth']], function() {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
});
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('cart', [ProductController::class, 'cart'])->name('cart');
Route::get('add-to-cart/{id}', [ProductController::class, 'addToCart'])->name('add.to.cart');
Route::patch('update-cart', [ProductController::class, 'update'])->name('update.cart');
Route::delete('remove-from-cart', [ProductController::class, 'remove'])->name('remove.from.cart');
Route::get('add-order', [App\Http\Controllers\OrderController::class, 'create']);
Route::post('add-order', [App\Http\Controllers\OrderController::class, 'store']);
Route::post('/cart', 'CartController@addToCart');
Route::post('/login', 'AuthController@login');
Route::post('/register', 'Auth\AuthController@register')->name('register');
Route::get('/',function(){
    return view('welcome');
});

Route::get('/dbconn', function(){
    return view('dbconn');
});
