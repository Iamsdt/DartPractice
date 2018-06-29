import 'dart:io';
import 'dart:convert';

int testCompress(var codec){

  String data = "";

  for (var i = 0; i < 100; ++i) {
    data = data + "Hello word. I am shudipto trafder\n";
  }

  //original Data
  List original = new Utf8Codec().encode(data);

  //compressed
  List compressed = codec.encode(original);

  //decompressed
  List decompressed = codec.decode(compressed);

  print("Codac:$codec");
  print("Original: ${original.length} bytes");
  print("Compressed: ${compressed.length} bytes");
  print("decompressde: ${decompressed.length} bytes");

  String newData = new Utf8Codec().decode(decompressed);

  return compressed.length;
}

void main(){

  int gzip = testCompress(new GZipCodec());

  print("\n");

  int zlib = testCompress(new ZLibCodec());

  print("\n");

  //but gzip is faster
  //zlib is better compression ration
}