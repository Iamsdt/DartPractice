import 'dart:io';
import 'dart:convert';

void main(){

  String data = "";

  for (var i = 0; i < 100; ++i) {
    data = data + "Hello word. I am shudipto trafder\n";
  }

  //original Data
  List original = new Utf8Codec().encode(data);

  //compressed
  List compressed = new GZipCodec().encode(original);

  //decompressed
  List decompressed = new GZipCodec().decode(compressed);

  print("Original: ${original.length} bytes");
  print("Compressed: ${compressed.length} bytes");
  print("decompressde: ${decompressed.length} bytes");

  String newData = new Utf8Codec().decode(decompressed);

  //print(newData);

}
















