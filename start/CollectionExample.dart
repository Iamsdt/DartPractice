/*
 * Created by Shudipto Tarfder
 * on 6/1/18 7:10 PM
 * Copyright (c)Shudipto Tarfder.
 */

import 'dart:collection';

void main() {
  /*
  List and map example in the data structure
   */

  print("Example of Set");
  var set = new Set();
  set.add("Dart");
  set.add(1);
  set.add(2.0);
  set.add(false);
  var list = ["Shudipto", "Trafder"];
  set.add(list);

  for (dynamic item in set) {
    print(item);
  }

  print("Another way");
  set.forEach((item) {
    print(item);
  });

  print("\nRemove from Set");
  set.remove(1);
  for (dynamic item in set) {
    print(item);
  }
  print("\nIf value is not found");
  set.remove("s");

  print("\nRemove with remove where");
  set.removeWhere((data) => data == "dart");
  for (dynamic item in set) {
    print(item);
  }

  print("\n*********Hasmap Example**************");
  var hashMap = new HashMap<String, dynamic>();
  hashMap["name"] = "Shudipto";
  hashMap["pro"] = "Dart";

  hashMap.forEach((key, value) {
    print("$key:$value");
  });

  //after remove
  print("\nAfter remove");
  hashMap.remove("pro");
  hashMap.forEach((key, value) {
    print("$key:$value");
  });

  //que
  print("\nQueue example");
  var que = new Queue<String>();
  que.add("Dart");
  que.add("Java");
  que.add("Koltin");
  que.add("c");

  que.forEach((item) {
    print(item);
  });

  print("\nSplay Tree Map");
  var tree = new SplayTreeMap<String, String>();
  tree["name"] = "Shudipto";
  tree["pro"] = "Dart";
  tree.forEach((key, value) {
    print("$key:$value");
  });

}
