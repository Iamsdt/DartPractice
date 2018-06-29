import 'dart:async';
import 'dart:io';
import 'dart:convert';

void main() async {

  String path = Directory.current.path+"/test.txt";
  print("Current path $path");

  String text = "\n\nHello word on: ${new DateTime.now()}";

  //wait until get the file from future
  File file = await getFile(path, text);
  print(file.uri);

  Stream file2 = getStreamFile(path, text);
  print(file2.length);

  print("The end");

}

Stream<File> getStreamFile(String path,String text){
  File file = new File(path);
  return file.writeAsString(text+" Stream",mode: FileMode.append).asStream();
}

Future<File> getFile(String path,String text){
  File file = new File(path);
  return file.writeAsString(text,mode: FileMode.append);
}