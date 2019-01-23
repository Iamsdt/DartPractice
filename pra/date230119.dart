/*
 * Created by Shudipto Tarfder
 *  on 1/23/19 7:00 PM
 *  Copyright (c)Shudipto Tarfder.
 */

import 'dart:io';

main() async {
  multipleCall();
  sleep(Duration(seconds: 10));
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

multipleCall() async {
  print("Start");
  Future future = call("one");
  Future future2 = call("two");
  Future future3 = call("three");
  Future future4 = call("four");
  Future future5 = call("five");

  await Future.wait([future, future2, future3, future4, future5]);

  print("Done");
}

Future<bool> call(String vale) async {
  sleep(Duration(seconds: 1));
  print(vale);
  return true;
}

longWait() async {
  sleep(Duration(seconds: 2));
  print("Wait comeplete");
}

shortWait() async {
  sleep(Duration(seconds: 1));

  print("Wait comeplete");
}
