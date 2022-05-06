<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Str;

class CategoryController extends Controller
{

    public function index()
    {
        $Category = Category::all();
        return Response()->json($Category);
    }
    public function GetAll()
    {
        return view('client.categories.index', ['Categories' => Category::all()]);
    }

    // public function GetById($id)
    // {
    //     $shopdetails=ShopDetail::where('shop_id',$shopid)->get();

    //     $row = Category::find($id);
    //     // dd($row);
    //     // return view('client.products.bycategory',compact('Categories'));
    //     return view('client.products.bycategory', compact('row'));
    // }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required'
        ]);
        $Category = new Category();
        if ($request->hasFile('photo')) {

            $file = $request->file('photo');
            $allowedfileExtention = ['pdf', 'png', 'jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention, $allowedfileExtention);
            if ($check) {
                $name = $file->getClientOriginalName();
                $file->move('images', $name);
                $Category->photo = $name;
            }
        }
        $Category->title = $request->input('title');
        $Category->description = $request->input('description');
        $Category->slug = Str::slug($request->input('title'));
        $Category->save();
        return Response()->json($Category);
    }

    public function show($id){
        $category = Category::find($id);
        return response()->json(['status' => 200, 'result' => $category]);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required'
        ]);
        $Category = new Category();
        //image upload
        if ($request->hasFile('photo')) {
            $file = $request->file('photo');
            $allowedfileExtention = ['pdf', 'png', 'jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention, $allowedfileExtention);
            if ($check) {
                $name =  $file->getClientOriginalName();
                $file->move('images', $name);
                $Category->photo = $name;
            }
        }
        $Category->title = $request->input('title');
        $Category->description = $request->input('description');
        $Category->slug = Str::slug($request->input('title'));
        $Category->save();
        return Response()->json($Category);
    }
    public function destroy($id)
    {
        $Category = Category::findOrFail($id);
        $Category->delete();
        return response()->json('Category detele seccessfully!');
    }
}
