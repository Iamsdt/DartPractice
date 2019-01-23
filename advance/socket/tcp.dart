import 'dart:io';
import 'dart:convert' show utf8;

void main() async {
  var serverSocket = await ServerSocket.bind(
      "127.0.0.1", 3000);

  print("Listining");

  await for (var socket in serverSocket){
    socket.listen((List value){
      print("${socket.remoteAddress}:${socket.remotePort} = "
          "${utf8.decode(value)} ");
    });
  }

}