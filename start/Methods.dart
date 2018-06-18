class Math {
  num a, b;

  Math(this.a, this.b);

  //Instance methods
  add() {
    return a + b;
  }
}

//void main() {
//  var math = new Math(10, 20);
//  print(math.add());
//}

/*
Getters and setters

Getters and setters are special methods that provide read and write
 access to an object’s properties. 
 Recall that each instance variable has an implicit getter,
  plus a setter if appropriate.
   You can create additional properties by implementing getters
    and setters, using the get and set keywords:
 */

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  num get right => left + width;

  set right(num value) => left = value - width;

  num get bottom => top + height;

  set bottom(num value) => top = value - height;
}
//void main() {
//  var rect = new Rectangle(3, 4, 20, 15);
//  assert(rect.left == 3);
//  rect.right = 12;
//  assert(rect.left == -8);
//}

//Abstract methods
/*
Instance, getter, and setter methods can be abstract,
 defining an interface but leaving its implementation up to other classes.
  Abstract methods can only exist in abstract classes.
 */
abstract class Data {
  fun();

  getData();
}

class DataLayer extends Data {
  fun() {
    //do something
  }

  getData() {
    //do something
  }
}

//interface
// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';

//  @override
//  num a;
//
//  @override
//  num b;
//
//  @override
//  add() {
//    //
//  }
}

String greetBob(Person person) => person.greet('Bob');

//void main() {
//  print(greetBob(new Person('Kathy')));
//  print(greetBob(new Impostor()));
//}

class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }

  void _illuminateDisplay() {}

  void _activateIrSensor() {}
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }

  void _bootNetworkInterface() {}

  void _initializeMemory() {}

  void _upgradeApps() {}

  //Overriding members
  @override
  void _illuminateDisplay() {}

/*
    noSuchMethod()

    To detect or react whenever code attempts to use a non-existent
    method or instance variable, you can override noSuchMethod():
*/
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}

enum Color { red, green, blue }

void main() {

  var aColor = Color.blue;

  switch (aColor) {
    case Color.red:
      //do something
      break;
    case Color.green:
      //do something
      break;

    case Color.blue:
      //do something
      break;
  }
}

//https://www.dartlang.org/guides/language/language-tour#adding-features-to-a-class-mixins
