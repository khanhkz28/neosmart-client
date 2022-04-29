<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
class CategoryController extends Controller
{

    public function index(){
        $Category = Category::all();
        return Response()->json($Category);
    }
    public function GetAll(){
        return view('client.categories.index', ['Categories' => Category::all()]);
    }
    public function GetById($id)
    {
        // $products = Category::find($id);
        // $products = Category::find($id)->with('Product')->get('id');
        // dd($products);
        // $products = Category::with('Product')->find($id->get('category_id'));
        // return view('client.products.bycategory', compact('products'));
        // $Categories = Category::find($id);
        
        $row = Category::find($id);
        // dd($row);
        // return view('client.products.bycategory',compact('Categories'));
        return view('client.products.bycategory', compact('row'));
    }
    public function store(Request $request){
        $this->validate($request,[
            'title' => 'required',
            'description'=> 'required'
        ]);
        $Category = new Category();
        if($request->hasFile('photo')){
            
            $file = $request->file('photo');
            $allowedfileExtention = ['pdf','png','jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention,$allowedfileExtention);
            if($check){
                $name = $file->getClientOriginalName();
                $file->move('images', $name);
                $Category->photo= $name;
            }
        }
        $Category->title = $request->input('title');          
        $Category->description = $request->input('description');        
        $Category->save();
        return Response()->json($Category);
    }
    public function update(Request $request ,$id){
        $this->validate($request,[
            'title' => 'required',
            'description'=> 'required'
        ]);
        $Category = new Category();
         //image upload
         if($request->hasFile('photo')){
            $file = $request->file('photo');
            $allowedfileExtention = ['pdf','png','jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention,$allowedfileExtention);
            if($check){
                $name =  $file->getClientOriginalName();
                $file->move('images', $name);
                $Category->photo= $name;
            }
        }  
        $Category->title = $request->input('title');          
        $Category->description = $request->input('description');        
        $Category->save();
        return Response()->json($Category);
    }
    public function destroy($id)
    {
        $Category= Category::findOrFail($id);
        $Category->delete();
        return response()->json('Category detele seccessfully!'); 
    }
}
