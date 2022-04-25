<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Faq;

class FaqController extends Controller
{
    public function index(){
        $Faq = Faq::all();
        return Response()->json($Faq);
    }

    public function GetAll(){
        return view('client.faqs', ['Faqs' => Faq::GetAll()]);
    }
    public function show($id)
    {
        $Faq= Faq::find($id);
        return response()->json($Faq); 
    }
    public function store(Request $request){
        $this->validate($request,[
            'title' => 'required',
            'content'=> 'required'
        ]);
        $Faq = new Faq();
        $Faq->title = $request->input('title');          
        $Faq->content = $request->input('content');   
        $Faq->description = $request->input('description');    
               
        $Faq->save();
        return Response()->json($Faq);
    }
    public function update(Request $request ,$id){
        $this->validate($request,[
            'title' => 'required',
            'content'=> 'required'
        ]);
        $Faq = new Faq();
        $Faq->title = $request->input('title');          
        $Faq->content = $request->input('content');   
        $Faq->description = $request->input('description');   
        $Faq->display = $request->input('display');            
        $Faq->save();
        return Response()->json($Faq);
    }
    public function destroy($id)
    {
        $Faq= Faq::findOrFail($id);
        $Faq->delete();
        return response()->json('Faq detele seccessfully!'); 
    }
}
