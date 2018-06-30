import 'dart:io';
import 'package:pointycastle/pointycastle.dart';
import 'dart:typed_data';
import 'dart:math';
import 'dart:convert';
import 'dart:collection';


void main(){
  var key = randomBytes(16);
  var params = new KeyParameter(key);

  //this is fater that other but more secure
  BlockCipher cipher = new BlockCipher("AES");
  cipher.init(true, params);

  String plainText = "Shudipto";
  Uint8List plainData = getList(plainText.padRight(cipher.blockSize));

  // encrypt
  Uint8List encrypt = cipher.process(plainData);

  //decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypt = cipher.process(encrypt);

  display("Plain", plainData);
  display("Encrypt", encrypt);
  display("Decrypt", decrypt);

  String text = new Utf8Decoder().convert(decrypt);
  print(text.trim());
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