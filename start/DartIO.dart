import 'dart:io';
import 'dart:async';

void main() {
  stdout.write("What is your name?\r\a");
  String name = stdin.readLineSync();

  name.isEmpty ? stderr.write("Name is empty") : print(name);
}
