var PORT = 6001
var io = require('socket.io')(PORT)
console.log('connected to', PORT)


io.on('error', function(socket) {
    console.log('error')
})
io.on('connection', function (socket) {
    // socket.on('message', ({name, email, phone, message}) => {
    //     console.log(name, email, phone, message);
    //     io.emit('message',  {name, email, phone ,message })
    // })
    socket.on('message', (noti) => {
        console.log(noti);
        io.emit('message',  noti)
    })
})


// var Redis = require('ioredis')
// var redis = new Redis(1000)

// redis.on('connection', function() {
//     console.log('connect redis');
// })

// redis.psubscribe("*",function(error,count){
// 	console.log(error,count);
// })
// redis.on('pmessage',function(partner,channel,message){
// 	console.log(channel)
// 	console.log(message)
// 	console.log(partner)

// 	message = JSON.parse(message)
// 	io.emit(channel+":"+message.event,message.data.message)
// 	console.log('Sent')
// })
