<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Faq;
use App\Models\Product;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{ 
    public function index() 
    {
        $Products = Product::where('position', '1')->latest()->get();
        return view('client.home', compact('Products'));
    }    
}
