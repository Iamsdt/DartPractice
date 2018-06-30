import 'dart:io';
import 'dart:convert';

void main() async {

  var socket = await Socket.connect("127.0.0.1", 3000);

  socket.write("Hello world");

  await socket.close();

  exit(0);
}