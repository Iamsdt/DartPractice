import 'dart:io';
import 'dart:convert';

void main(){


  //open directory
  String notepad = "C:/windows/System32/notepad.exe";

//  Process.run(notepad,['']).then((ProcessResult res){
//    print(res.stdout);
//    print("exit code: ${res.exitCode}"); // o is everything good
//  });

  var dart = Platform.executable;

  Process.start("dart", []).then((Process process){
    process.stdout.transform(UTF8.decoder).listen((data){
      print(data);

      process.stdin.writeln("Hello word");

      //kill the process
      Process.killPid(process.pid);

      //print  exit code
      print(process.exitCode);
    });
  });


}