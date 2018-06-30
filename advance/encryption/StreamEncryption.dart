import 'dart:io';
import 'package:pointycastle/pointycastle.dart';
import 'dart:typed_data';
import 'dart:math';
import 'dart:convert';
import 'dart:collection';

void main(){
  var keybytes = randomBytes(16);
  var key = new KeyParameter(keybytes);
  final iv  =randomBytes(8);
  final params = new ParametersWithIV(key, iv);

  StreamCipher cipher = new StreamCipher("Salsa20");
  cipher.init(true, params);

  String plainText = "Shudipto";
  Uint8List plainData = getList(plainText);
  Uint8List encryptData = cipher.process(plainData);

  //decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypt = cipher.process(encryptData);
  
  display("Plain text", plainData);
  display("Encrypt Data", encryptData);
  display("Decrypt Data", decrypt);

  print(new Utf8Codec().decode(decrypt));
}

Uint8List getList(String data) =>
    new  Uint8List.fromList(new Utf8Codec().encode(data));

void display(String title,Uint8List list){
  print("Title $title");
  print(list);
  print(new Base64Codec().encode(list));
  print("");
}

Uint8List randomBytes(int length){
  final rnd = new SecureRandom("AES/CTR/AUTO-SEED-PRNG");
  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  final params = new ParametersWithIV(keyParam, new Uint8List(16));

  rnd.seed(params);

  var random = new Random();
  for (var i = 0; i < random.nextInt(255); ++i) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}