import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';

void main(){

  Digest digest = new Digest("SHA-256");

  String name = "Shudipto";

  Uint8List data = new  Uint8List.fromList(new Utf8Codec().encode(name));
  Uint8List hash = digest.process(data);

  //print(hash);
  print(new Base64Codec().encode(hash)); //encode is not encryption

}