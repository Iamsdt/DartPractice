import 'dart:io';

void main(){
  print("OS: ${Platform.operatingSystem}"
      "\n ${Platform.operatingSystemVersion}");


  print("${Platform.numberOfProcessors}");

  //platform specific code
  if(Platform.isWindows){
    print("Windows");
  } else{
    print("Something else");
  }

  print("Path: ${Platform.script.path}");
  
  print("dart:${Platform.executable}");

  print("\nenvironment variable");
  Platform.environment.forEach((key,value){
    print("$key:$value");
  });
}