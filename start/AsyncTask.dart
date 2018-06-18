import 'dart:async';

Future<bool> longWait() async {
  for (var i = 0; i < 100; ++i) {
    print("Long wait:$i");
  }

  return true;
}

Future<bool> shortWait() async {
  for (var i = 0; i < 10; ++i) {
    print("Short wait:$i");
  }
  return true;
}

Future testAsync() async {
  print("Start");
  print("Starting long wait");
  var long = await longWait();
  print(long);
  print("Starting short wait");
  var short = await shortWait();
  print(short);
  print("Done");
}

void newWay() {
  print("Start");
  print("Starting long wait");
  longWait().then((bool vale) {
    print("Done waitiong $vale");
  });
}

Future<List<int>> getUserList() async {
  var list = new List<int>();

  for (var i = 0; i <= 10; ++i) {
    list.add(i);
  }

  return list;
}

Future<bool> call(String vale) async {
  for (var i = 0; i < 10000; ++i) {
    print("Call:$vale -> $i");
  }

  return true;
}

void multipleCall() async{
  print("Start");
  Future future = call("one");
  Future future2 = call("two");
  Future future3 = call("three");
  Future future4 = call("four");
  Future future5 = call("five");

  await Future.wait([future,future2,future3,future4,future5]);

  print("Done");
}

void main() {
  print("Main Method");
  print("Start calling testAsync");
  //newWay();

//  print("Getting list of user");
//  getUserList().then((List<int> vale) {
//    for (int i in vale) {
//      print("Value $i");
//    }
//  });

  multipleCall();

  print("finihed main funcation");
}
