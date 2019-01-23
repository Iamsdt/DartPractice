/*
 * Created by Shudipto Tarfder
 * on 6/1/18 7:10 PM
 * Copyright (c)Shudipto Tarfder.
 */

import 'dart:math';

//single line comment
/*
* multi line comment
*/

class TestMain {
  void main(List<String> lists) {
    var value; //value is null

    String value2;
    int number;
    double number2;
    bool status;
  }
}

void main(List<String> lists) {
  print("Hello world");

  int i = 10;
  printInteger(i);

  //variables
  var v = 10; //this can hold any type of data

  dynamic s = "s";
  String ds =
      "Ds"; //Another option is to explicitly declare the type that would be inferred
  String sin = 's'; //single quote

  //Uninitialized variables have an initial value of null.
  // Even variables with numeric types are initially null,
  // because numbers—like everything else in Dart—are objects.
  int lineCount;

  //multiple variable
  var a, b, c, d, e;
  //multiple variable with value
  var a1 = 10, b2 = 20, c2 = 30;

  //final and constant
  final name = "Shudipto";
  final String type = "Student"; //explicitly

  const value = 1000;
  const String data = "data:$value"; //explicitly

  //It can use to create constant values,
  // as well as to declare constructors that create constant values.
  // Any variable can have a constant value.

  // Note: [] creates an empty list.
  // const [] creates an empty, immutable list (EIL).
  var foo = const []; // foo is currently an EIL.
  final bar = const []; // bar will always be an EIL.
  const baz = const []; // baz is a compile-time constant EIL.

  // It is possible to change the value of a non-final, non-const variable,
  // even if it used to have a const value.
  foo = [];

  // It is not possible to change the value of a final or const variable.
  // bar = []; // Unhandled exception.
  // baz = []; // Unhandled exception.
}

printInteger(int i) {
  print(i);
}

getName(String name) {
  return name;
}
