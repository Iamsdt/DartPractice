import 'dart:async';
import 'dart:io';
import 'dart:convert';

void main() {

  String path = Directory.current.path+"/test.txt";
  print("Current path $path");

  File file = new File(path);

  Future <RandomAccessFile> future = file.open(mode: FileMode.append);
  
  future.then((RandomAccessFile raf){
    print("File has been opened");
    
    raf.writeString("Hello world").then((value){
      print("file has been appended");
    }).catchError(()=> print("An error occured"))
    .whenComplete(()=> raf.close());
  });

  print("The end");

}









