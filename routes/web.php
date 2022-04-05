<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductCategory;
use App\Http\Controllers\addTocart;
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

Route::get('/', [ProductCategory::class, 'index']);
Route::get('product-category', [ProductCategory::class, 'index']);
Route::get('product-detail/{id}', [ProductCategory::class, 'showProduct']);
Route::post('addtocart', [addTocart::class, 'index'])->name('add-to-cart');
Route::post('submit-order', [addTocart::class, 'submit'])->name('submitorder');
Route::post('removecart', [addTocart::class, 'delete'])->name('remove-to-cart');
Route::get('addcart', [addTocart::class, 'show'])->name('add-cart');
