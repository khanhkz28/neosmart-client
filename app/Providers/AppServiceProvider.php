<?php

namespace App\Providers;

use App\Models\Blog;
use App\Models\Category;
use Illuminate\Support\ServiceProvider;

use App\Models\Faq;
use App\Models\Product;
use Illuminate\Support\Facades\View;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        return View::share("data", ["faq" => Faq::GetAllFooter(),"blogs" => Blog::GetAll(),"hotblog" => Blog::GetByHotBlog(),"hotproducts" => Product::GetByHotProduct(),"hotcategory" => Category::GetByHotCategory()]);

    }
}
