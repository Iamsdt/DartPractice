import 'dart:async';


int counter = 0;

void main(){

  Duration duration  =new Duration (seconds: 1);

  Timer timer = new Timer.periodic(duration, timeout);

  print("Started: ${getTime()}");

  after5s("Counter complete");
}

void timeout(Timer timer){
  print("Timeout: ${getTime()}");

  counter++;

  if (counter >= 5) timer.cancel();

}

String getTime(){
  DateTime dateTim = new DateTime.now();
  return dateTim.toString();
}

void after5s(String s){

  new Timer(new Duration(seconds: 3), (){
    print("\nAfter 3s: $s\n");
  });

}