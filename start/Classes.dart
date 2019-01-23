//https://www.dartlang.org/guides/language/language-tour#classes

//Instance variables
class Point {
  num x; // Declare instance variable x, initially null.
  num y; // Declare y, initially null.
  num z = 0; // Declare z, initially 0.
}

//void main() {
//  var p = Point();
//  p.x = 0;
//  p.y = null;
//}

//Constructors
class newPoint {
  num x, y;

  newPoint(num x, num y) {
    this.x = x;
    this.y = y;
  }
//Note: Use this only when there is a name conflict.
// Otherwise, Dart style omits the this.
}

class PointThis {
  num x, y;

  PointThis(this.x, this.y);
}
// default constructor is provided by default

//Named constructors
//Use a named constructor to implement multiple constructors
// for a class or to provide extra clarity:

class Find{

  var list;
  var data;
  var name;

  Find.List(this.list);
  Find.Data(this.data);
  Find.Name(this.name);

}

//Constant constructors
class ImmutablePoint {

  final num x, y;

  const ImmutablePoint(this.x,this.y);

  static final ImmutablePoint origin =
  const ImmutablePoint(0, 0);
}

//Factory constructors
/*
Use the factory keyword when implementing a constructor that
doesn’t always create a new instance of its class.
For example, a factory constructor might return an instance from a cache,
 or it might return an instance of a subtype.
 */
class Logger{
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = {};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
  //Note: Factory constructors have no access to this.
}

void main(){
  var logger = new Logger('UI');
  logger.log('Button clicked');

  var logger2 = new Logger('UI');
  logger2.log('Button clicked');

  logger2.mute = true;

  //this is not print
  logger.log('Button clicked');
  logger2.log('Button clicked');

  //constructors
  var imuatable = new ImmutablePoint(10,15);
  print("${imuatable.x}");
  print("${imuatable.y}");
  //change
  //imuatable.y = 10;

  //named constructors
  var name1 = new Find.List(10);
  print("List: ${name1.list} and data:${name1.data} and name:${name1.name}");
  var name2 = new Find.Data(10);
  print("List: ${name2.list} and data:${name2.data} and name:${name2.name}");
  var name3 = new Find.Name(10);
  print("List: ${name3.list} and data:${name3.data} and name:${name3.name}");

  var point = new PointThis(10,20);
  print("PointThis: ${point.x}");

}