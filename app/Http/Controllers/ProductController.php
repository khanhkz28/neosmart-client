<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    public function index()
    {
      
        $products= Product::all();
        return response()->json($products); 
    }
    public function GetAll()
    {
        return view('client.products.index', ['products' => Product::GetAll()]);
    }
    public function GetById($slug)
    {
        $id = Product::where('id', $slug)
        ->orWhere('slug', $slug)
        ->firstOrFail();
        
        $row= Product::find($id->id);
        if ($row == null) {
            return redirect('sanpham')->with('success', 'Sản phẩm này không tồn tại!');
        } else {
            return view('client.products.detail', compact('row'));
        }
    }

    public function GetByCategory($slug)
    {
            $id = Category::where('id', $slug)
            ->orWhere('slug', $slug)
            ->firstOrFail();
           $products = Product::where('category_id',$id->id)->get();
           return view('client.products.index', compact('products'));

    }
    public function store(Request $request)
    {
        $this->validate($request,[
            'title' => 'required',
            'price'=> 'required',
            'photo'=> 'required',
            'description' => 'required',
            'detail'=> 'required',
            'category_id'=> 'required'
        ]);
        $product = new Product();
        //image upload
        if($request->hasFile('photo')){
            $file = $request->file('photo');
            $allowedfileExtention = ['pdf','png','jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention,$allowedfileExtention);
            if($check){
                $name = $file->getClientOriginalName();
                $file->move('images', $name);
                $product->photo= $name;
            }
        }
            $product->title = $request->input('title');        
            $product->price = $request->input('price'); 
            $product->description = $request->input('description');      
            $product->content = $request->input('content');        
            $product->detail = $request->input('detail');        
            $product->slug = Str::slug($request->input('title'));
            $product->position = $request->input('position', '0');        
            $product->display = $request->input('display', '1');      
            $product->category_id = $request->input('category_id');
            $data = Category::find($request->input('category_id'));    
        if( $data == null){
            return response()->json(
                [
                    'status'=> 404, 
                    'message' => 'Id category không hợp lệ', 
                ]
            );
           
        }
        else{ 
            $product->save();
            return response()->json($product); 
        }
        
    }
    public function show($id)
    {
        $product= Product::find($id);
        return response()->json($product); 
    }
    public function showbycategory($id)
    {
           $product = Product::where('category_id',$id)->get();
          return response()->json($product); 

    }
  
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'title' => 'required',
            'price'=> 'required',
            'photo'=> 'required',
            'description'=> 'required',
        ]);
        $product = Product::find($id);
         //image upload
         if($request->hasFile('photo')){
            $file = $request->file('photo');
            $allowedfileExtention = ['pdf','png','jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention,$allowedfileExtention);
            if($check){
                $name =  $file->getClientOriginalName();
                $file->move('images', $name);
                $product->photo= $name;
            }
        }    
        $product->title = $request->input('title');        
        $product->price = $request->input('price');      
        $product->content = $request->input('content');     
        $product->detail = $request->input('detail');           
        $product->description = $request->input('description');
        $product->slug = Str::slug($request->input('title'));    
        $product->position = $request->input('position');        
        $product->display = $request->input('display'); 
        $product->save();
        return response()->json($product); 
    }
    public function destroy($id)
    {
        $product= Product::findOrFail($id);
        $product->delete();
        return response()->json('Product detele seccessfully!'); 
    }

    public function getAllPaginate($perpage){
        $perpage = !isset($perpage) || $perpage <= 0 ? 1 : $perpage;
        $product = Product::paginate($perpage);
        return response()->json(["result" => $product, "status" => 200]);
    }

    public function getProductByCategoryId($categoryId, $perpage){
        $perpage = !isset($perpage) || $perpage <= 0 ? 1 : $perpage;
        $product = Product::where('category_id', $categoryId)->paginate($perpage);
        return response()->json(["status" => 200, "result" => $product]);
    }
}
