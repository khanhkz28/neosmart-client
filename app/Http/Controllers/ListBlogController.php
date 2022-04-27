<?php

namespace App\Http\Controllers;

use App\Models\ListBlog;
use Illuminate\Http\Request;

class ListBlogController extends Controller
{
    public function index(){
        $ListBlog = ListBlog::all();
        return Response()->json($ListBlog);
    }
    public function GetAll(){
        $ListBlog = ListBlog::with('Blog')->get();
        return view('client.construction.index',compact('ListBlog'));
    }
    public function store(Request $request){
        $this->validate($request,[
            'title' => 'required',
            'description'=> 'required'
        ]);
        $ListBlog = new ListBlog();
        $ListBlog->title = $request->input('title');          
        $ListBlog->description = $request->input('description');        
        $ListBlog->save();
        return Response()->json($ListBlog);
    }
    public function update(Request $request ,$id){
        $this->validate($request,[
            'title' => 'required',
            'description'=> 'required'
        ]);
        $ListBlog = new ListBlog();
        $ListBlog->title = $request->input('title');          
        $ListBlog->description = $request->input('description');        
        $ListBlog->save();
        return Response()->json($ListBlog);
    }
    public function show($id)
    {
        $ListBlog= ListBlog::find($id);
        return response()->json($ListBlog); 
    }
    public function destroy($id)
    {
        $ListBlog= ListBlog::findOrFail($id);
        $ListBlog->delete();
        return response()->json('ListBlog detele seccessfully!'); 
    }
}
