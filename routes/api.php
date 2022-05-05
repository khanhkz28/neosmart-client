<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ListBlogController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\ClientMessageController;
use App\Http\Controllers\MenuController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::get('/getalluser', [AuthController::class, 'GetAll']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);
    Route::post('/change-pass', [AuthController::class, 'changePassWord']);
});

Route::group(['middleware' => 'api', 'prefix' => 'blog'], function ($router) {
    Route::get('index', [BlogController::class, 'index']);
    Route::post('store', [BlogController::class, 'store']);
    Route::post('update/{id}', [BlogController::class, 'update']);
    Route::delete('delete/{id}', [BlogController::class, 'destroy']);
    Route::get('show/{id}', [BlogController::class, 'show']);
    Route::get('show/listblog/{id}', [BlogController::class, 'GetByListBlogApi']);
    Route::post('updateDisplay/{id}', [BlogController::class, 'updateDisplay']);
    Route::get('paginate/limit-{perpage}', [BlogController::class, 'getAllPaginate']);
});
Route::group(['middleware' => 'api', 'prefix' => 'category'], function ($router) {
    Route::get('index', [CategoryController::class, 'index']);
    Route::post('store', [CategoryController::class, 'store']);
    Route::post('update/{id}', [CategoryController::class, 'update']);
    Route::delete('delete/{id}', [CategoryController::class, 'destroy']);
    Route::get('show/{id}', [CategoryController::class, 'show']);
});

Route::group(['middleware' => 'api', 'prefix' => 'listblog'], function ($router) {
    Route::get('index', [ListBlogController::class, 'index']);
    Route::post('store', [ListBlogController::class, 'store']);
    Route::post('update/{id}', [ListBlogController::class, 'update']);
    Route::delete('delete/{id}', [ListBlogController::class, 'destroy']);
    Route::get('show/{id}', [ListBlogController::class, 'show']);
});

Route::group(['middleware' => 'api', 'prefix' => 'faq'], function ($router) {
    Route::get('index', [FaqController::class, 'index']);
    Route::post('store', [FaqController::class, 'store']);
    Route::post('update/{id}', [FaqController::class, 'update']);
    Route::delete('delete/{id}', [FaqController::class, 'destroy']);
    Route::get('show/{id}', [FaqController::class, 'show']);
});
Route::group(['middleware' => 'api', 'prefix' => 'menu'], function ($router) {
    Route::get('index', [MenuController::class, 'index']);
    Route::post('store', [MenuController::class, 'store']);
    Route::post('update/{id}', [MenuController::class, 'update']);
    Route::post('updateproperties/{id}', [MenuController::class, 'updateproperties']);
    Route::delete('delete/{id}', [MenuController::class, 'destroy']);
    Route::get('show/{id}', [MenuController::class, 'show']);
});
Route::group(['middleware' => 'api', 'prefix' => 'product'], function ($router) {
    Route::get('index', [ProductController::class, 'index']);
    Route::post('store', [ProductController::class, 'store']);
    Route::post('update/{id}', [ProductController::class, 'update']);
    Route::delete('delete/{id}', [ProductController::class, 'destroy']);
    Route::get('show/{id}', [ProductController::class, 'show']);
    Route::get('show/category/{id}', [ProductController::class, 'showbycategory']);
    Route::get('paginate/{perpage}', [ProductController::class, 'getAllPaginate']);
    Route::get('category/{categoryId}/paginate-{perpage}', [ProductController::class, 'getProductByCategoryId']);
});

// Route::apiResource('/client-message', ClientMessageController::class);

Route::group(['middleware' => 'api', 'prefix' => 'client-message'], function ($router) {
    Route::get('/', [ClientMessageController::class, 'index']);
    Route::get('/{id}', [ClientMessageController::class, 'show']);
    Route::post('update/{id}', [ClientMessageController::class, 'update']);
});