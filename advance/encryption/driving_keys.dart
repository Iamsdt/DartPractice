import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';

void main(){

  String password = "password my pass";

  var salt = getList("Dart"); //salt random the encryption
  var pkcs = new KeyDerivator("SHA-1/HMAC/PBKDF2");

  var params = new Pbkdf2Parameters(salt, 100, 8);
  pkcs.init(params);

  Uint8List key = pkcs.process(getList(password));
  
  display("key value", key);

}

Uint8List getList(String data) =>
    new  Uint8List.fromList(new Utf8Codec().encode(data));

void display(String title,Uint8List list){
  print("Title $title");
  print(list);
  print(new Base64Codec().encode(list));
  print("");
}

