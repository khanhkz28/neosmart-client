<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\PaginationController;
use App\Http\Controllers\ClientMessageController;
use App\Http\Controllers\ListBlogController;
use App\Events\RedisEvent;

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

Route::get('/', [ClientController::class, 'index'])->name('home');
Route::get('/lienhe', function () {
    return view('client.contant');
});
Route::post('/lienhe', [ClientMessageController::class, 'contact']);
Route::post('/email', [ClientMessageController::class, 'sendEmail'])->name('send.email');
Route::get('/faq', [FaqController::class, 'GetAll']);
Route::get('/pagination', [PaginationController::class, 'index']);
Route::get('/pagination/fetch_data', [PaginationController::class, 'fetch_data']);
Route::group(['prefix' => 'cong-trinh'], function ($router) {
    Route::get('/', [ListBlogController::class, 'GetAll']);
    Route::get('/{slug}', [BlogController::class, 'getbyid']);
});
// Route::group(['prefix' => 'danhmuc'], function ($router) {
//     Route::get('/', [CategoryController::class, 'GetAll']);
//     Route::get('/{id}', [ProductController::class, 'GetByCategory']);
// });
Route::group(['prefix' => 'san-pham'], function ($router) {
    // Route::get('/', [ProductController::class, 'GetAll']);
    Route::get('/', [CategoryController::class, 'GetAll']);
    Route::get('/{slug}', [ProductController::class, 'GetByCategory']);
    Route::get('chi-tiet/{slug}', [ProductController::class, 'GetById']);
});


