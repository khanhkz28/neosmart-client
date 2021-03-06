<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ClientMessage;
use App\Events\RedisEvent;
use Illuminate\Support\Facades\Mail;

// use PHPSocketIO\SocketIO;

class ClientMessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $message = ClientMessage::all();
        return response()->json($message);
    }
    public function contact(Request $request)
    {
        $this->validate($request,[
            'fullname' => 'required|min:6',
            'email' => 'required|email',
            'phone_number' => 'required|digits:10',
            'message' => 'required'
        ]);
        $messages = new ClientMessage();
        $messages->fullname = $request->input('fullname');          
        $messages->email = $request->input('email');   
        $messages->phone_number = $request->input('phone_number');    
        $messages->message = $request->input('message');    
        $messages->save();
        $alert='Bình luận của bạn đã được đưa vào danh sách xem xét hiển thị. Xin cám ơn bạn nhiều!'; 
        return  redirect()->back() ->with('alert', $alert);
    } 
    
    public function sendEmail(Request $request)
    {

        $request->validate([
            'fullname' => 'required|min:4',
            'email' => 'required|email',
            'phone_number' => 'required|digits:10',
            'message' => 'required'
        ]);
        $data = [
          'name' => $request->fullname,
          'subject' =>  $request->fullname .' - Liên hệ - Neosmart',
          'phone' => $request->phone_number,
          'email' => $request->email,
          'emailneosmart' => 'kensuyu1@gmail.com',
          'Message' => $request->message,
        ];
        Mail::send('client.contact-template', $data, function($message) use ($data) {
          $message->to($data['emailneosmart'])
          ->subject($data['subject'],['name'],['phone'],['email'],['Message']);
        });
        $messages = new ClientMessage();
        $messages->fullname = $request->input('fullname');          
        $messages->email = $request->input('email');   
        $messages->phone_number = $request->input('phone_number');    
        $messages->message = $request->input('message');    
        $messages->save();
        
        return back()->with(['message' => 'Gửi liên hệ thành công!']);
    } 
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'fullname' => 'required|min:6',
            'email' => 'required|email',
            'phone_number' => 'required|digits:10',
            'message' => 'required'
        ]);
        
        $message = ClientMessage::create($request->all());
        // $io = new SocketIO(6001);
        // $io->on('message', function($message)use($io){
        //     $io->emit('message', $message);
        // });
        // event(new RedisEvent($messages));
        return response()->json([$message, 201]);
    }   

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return response()->json([ClientMessage::findOrFail($id), 200]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $message = ClientMessage::find($id);
        $message->status = $request->input('status'); 
        $message->save();
        return response()->json([$message, 201]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $message = ClientMessage::findOrFail($id);
        $message->delete();

        return response()->json(["Delete successfully", 200]);
    }

    public function paginate($per){
        $paginate = ClientMessage::paginate($per);
        return response()->json($paginate);
    }
}
