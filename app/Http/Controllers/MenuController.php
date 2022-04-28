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
        $Menu->position = $request->input('position', '0');   
        $Menu->display = $request->input('display', '1');  
        $Menu->save();
        return Response()->json($Menu);
    }
    public function update(Request $request ,$id){
        $this->validate($request,[
            'label' => 'required',
            'link'=> 'required'
        ]);
        $Menu = Menu::find($id);
        $Menu->label = $request->input('label');          
         $Menu->link = $request->input('link');   
        $Menu->parent = $request->input('parent');
        $Menu->position = $request->input('position');      
        $Menu->display = $request->input('display');
        $Menu->save();
        return Response()->json($Menu);
    }
    public function updateproperties(Request $request ,$id){
        $Menu = new Menu();
        $Menu->display = $request->input('display');
        $Menu->parent = $request->input('parent');      
        $Menu->position = $request->input('position');            
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