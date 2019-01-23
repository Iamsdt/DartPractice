/*
 * Created by Shudipto Tarfder
 * on 6/1/18 7:09 PM
 * Copyright (c)Shudipto Tarfder.
 */

/*
The Dart language has special support for the following types:

numbers
strings
booleans
lists (also known as arrays)
maps
runes (for expressing Unicode characters in a string)
symbols

 */

void main() {
//Numbers
  int i = 10;
  int hex = 0xDEADBEEF;
  double d = 15.4;
  double exponents = 1.42e5;
//both int and double are sub type of num class
// so it's support basic math operation

// string to number convert
  var one = int.parse('1');
  var onePointOne = double.parse('1.1');

//String
  var s1 = 'Example of single quotes';
  var s2 = "Example of double quotes";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

//multi line string
  var s5 = '''
Example of
multi-line strings like this one.
''';

  var s6 = """This is also a
multi-line string.""";

  var s = r"In a raw string, even \n isn't special.";

//convert
//int -> String
  String oneAsString = 1.toString();

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);

//some operation
  var data = "$s1 and $s2";
//check two string is same or not
  var check = s1 == s2;
//Two strings are equivalent if they contain
// the same sequence of code units.

//booleans
  var boolean = true;
  bool b = false; //explicitly

//List
//The most common collection of any programming language
// is array but int dart it's called List
// so most people just call them lists.
  var list = [1, 2, 3, 4, 5];
  List lists = [1, "one", 2, "two"]; // can hold any type of value
  List<String> strings = ["Shudipto", "Trafder"]; //explicitly
//constant list
  const List li = const["three", "one", "two", 2];
  const List<String> li2 = const["one", "two"];

//Map
  var map = {"key": "value", "name": "Shudipto"};

  var nameMap = {1: "Shudipto", 2: "Trafder"};
// using map constructor
  var gift = new Map(); //hold any type
  gift['key'] = 'value';
  gift[1] = 2;

  var typeMap = new Map<String, String>();
  typeMap["key"] = "value";
  //constant map
  const map2 = const{
    1:2,
    2:3,
    4:"four"
  };

}
