import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as P;

void main(){

  List files = new List();

  Directory.current.listSync().forEach(
      (FileSystemEntity fse){
        files.add(fse.path);
      }
  );

  String zipFile = Directory.current.path + "/test.zip";
  
  zip(files, zipFile);

  //now unzip
  unzip(zipFile, "${Directory.current.path+"/decompressed"}");

}

void zip(List<String> files, String file){

  Archive archive = new Archive();

  files.forEach((String path){
    File file = new File(path);
    ArchiveFile archiveFile = new ArchiveFile(P.basename(path),
        file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archiveFile);
  });
  
  ZipEncoder encoder = new ZipEncoder();
  File f = new File(file);
  f.writeAsBytesSync(encoder.encode(archive));

  print("Compressed");
  
}

void unzip(String zip, String path){

  File file = new File(zip);
  
  Archive archive = new ZipDecoder().decodeBytes(file.readAsBytesSync());

  archive.forEach((ArchiveFile af){
    File newFile = new File(path+"/"+af.name);
    newFile.createSync(recursive: true);
    file.writeAsBytesSync(af.content);
  });

  print("Decompressed");

}









