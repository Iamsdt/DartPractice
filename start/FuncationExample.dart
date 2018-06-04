/*
 * Created by Shudipto Tarfder
 * on 6/1/18 7:09 PM
 * Copyright (c)Shudipto Tarfder.
 */

/*
Dart is a true object-oriented language,
 so even functions are objects and have a type,
  Function. This means that functions can be
   assigned to variables or passed as arguments
    to other functions.
    You can also call an instance of a Dart class as if
    it were a function
 */

var _nobleGases = {
  1: "one",
  2: "two",
  3: "three",
  4: "four",
  5: "five",
  6: "six",
};

//recommended method
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNobel(int number){
  return _nobleGases[number] != null;
}

bool isFound(int num) => _nobleGases[num] != null; //this sign is called fat arrow

status(int num) => {
  _nobleGases[num] != null : "value is empty"
};

 //function parameter with out data type
add(int number, int number2) => number + number2;

//default value in parameter
int sub(int num,int num2,{int num3 = 10, int num4 = 10})
=> num-num2-num3-num4;

/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold, bool hidden}) {
  // ...
}

//optional parameter
void opPara(int a,int b,int c,[int d, int e]){
  //do something
}

//default value with optional parameter
void df(int a,int b,[int c = 0,int d = 0,int e = 0])
 => a+b+c+d+e;

void main(){
  var type = isNobel(10);
  var wType = isNoble(10);

  print("Type: $type and withType:$wType");


  var s = status(1);
  print(s.values);

  var su = add(10,20);
  //if we need to pass just 2 value
  var su1 = sub(10, 20);

  enableFlags(bold: true, hidden: false);


  //without op
  var doP = opPara(1,2,3);
  //with op
  var wop = opPara(1,2,3,4,5);

  var ad1 = df(10,5);
  print('$ad1');

  print("2 parameter -> ${df(10,120)}");
  print("3 parameter -> ${df(10,120,220)}");
  print("4 parameter -> ${df(10,120,220,340)}");
  print("5 parameter -> ${df(10,120,220,340,620)}");


  //Functions as first-class objects
  var list = [1,2,3,4,5,6,7];
  list.forEach(printElement);

  //variable function
  print(sout("Help"));

  //anonymous function
  list.forEach((fun){
    print(fun);
  });

  //nested function

  //Lexical closures
  var adder2 = makeAdder(2);
  print("Adder2: ${adder2(5)}");

  var adder25 = makeAdder(25);
  print("Adder25: ${adder25(5)}");
  
}

//nested function
inside(){
  print("Inside main function");

  inside(){
    print("Inside function");

    inside(){
      print("Inside function 1");

      inside(){
        print("Inside function 2");

        inside(){
          print("Inside main function 3");

          inside(){
            print("Inside function 4");
          }
        }
      }
    }
  }
}

//main function with agr
//void main(List<String> args){
//
//}

//Functions as first-class objects
void printElement(int element) {
  print(element);
}

//function as variable
var sout = (String message) => "!!!${message.toUpperCase()}!!!";

/*
Lexical closures
A closure is a function object that has access to variables
 in its lexical scope, even when the function is
  used outside of its original scope.

Functions can close over variables defined in surrounding scopes.
 In the following example, makeAdder() captures the variable addBy.
  Wherever the returned function goes, it remembers addBy.
 */
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

