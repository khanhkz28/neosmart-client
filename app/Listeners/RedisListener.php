<?php

namespace App\Listeners;

use App\Events\RedisEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class RedisListener implements ShouldBroadcast
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\RedisEvent  $event
     * @return void
     */
    public function handle(RedisEvent $event)
    {
        DB::table('client-message')->insert([
            'message' => $event->message
        ]);
        Mail::to($event->message)->send(new RedisMessage());

    }
}
