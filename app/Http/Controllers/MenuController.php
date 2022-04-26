<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Facade\FlareClient\Http\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response as HttpFoundationResponse;

class MenuController extends Controller
{
    public function index(){
        $Menu = Menu::all();
        return Response()->json($Menu);
    }
    public function store(Request $request){

        $validator = Validator::make($request->all(), [
            'label' => 'required|unique:menu|max:255',
            'link' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->messages(), HttpFoundationResponse::HTTP_BAD_REQUEST);
        }
        $Menu = new Menu();
        $Menu->label = $request->input('label');          
        $Menu->link = $request->input('link');   
        $Menu->parent = $request->input('parent', '0'); 
        $Menu->sort = $request->input('sort', '0');   
               
        $Menu->save();
        return Response()->json($Menu);
    }
    public function update(Request $request ,$id){
        $this->validate($request,[
            'label' => 'required',
            'link'=> 'required'
        ]);
        $Menu = new Menu();
        $Menu->title = $request->input('title');          
        $Menu->content = $request->input('content');   
        $Menu->description = $request->input('description');   
        $Menu->display = $request->input('display');            
        $Menu->save();
        return Response()->json($Menu);
    }
    public function updateproperties(Request $request ,$id){
        $Menu = new Menu();
        $Menu->display = $request->input('display');
        $Menu->display = $request->input('parent');      
        $Menu->display = $request->input('sort');            
        $Menu->save();
        return Response()->json($Menu);
    }
    public function destroy($id)
    {
        $Menu= Menu::findOrFail($id);
        $Menu->delete();
        return response()->json('Menu detele seccessfully!'); 
    }
	public function show($id)
    {
        $Menu= Menu::find($id);
        return response()->json($Menu); 
    }
}