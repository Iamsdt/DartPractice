//Throw
throwEx() {
  throw FormatException("Exception");

  //You can also throw arbitrary objects:
  throw "Exception";
}

void distanceTo(String other) => throw new UnimplementedError();

//Catch
tryCatch() {
  try {
    //do something
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }
}
/*
Use on when you need to specify the exception type.
 Use catch when your exception handler needs the exception object.
 */

/*
You can specify one or two parameters to catch().
 The first is the exception that was thrown,
  and the second is the stack trace (a StackTrace object).
 */
stack() {
  try {
    // ···
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }
}

/*
To partially handle an exception,
 while allowing it to propagate,
  use the rethrow keyword.
 */

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

//call this on main activity

void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}

//Finally
Finally() {
  /*
  To ensure that some code runs whether
  or not an exception is thrown, use a finally clause.
  If no catch clause matches the exception,
  the exception is propagated after the finally clause runs:
  */

  //mock method
  breedMoreLlamas(){}
  cleanLlamaStalls(){}

  //try
  try {
    breedMoreLlamas();
  } finally {
    // Always clean up, even if an exception is thrown.
    cleanLlamaStalls();
  }

  try {
    breedMoreLlamas();
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {
    cleanLlamaStalls(); // Then clean up.
  }
}
