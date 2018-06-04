/*
 * Created by Shudipto Tarfder
 *  on 6/2/18 9:56 PM
 *  Copyright (c)Shudipto Tarfder.
 */

/*
https://www.dartlang.org/guides/language/language-tour#operators
 */

/*
Description	          Operator
unary postfix	    expr++    expr--    ()    []    .    ?.
unary prefix	    -expr    !expr    ~expr    ++expr    --expr
multiplicative	    *    /    %  ~/
additive	        +    -
shift	            <<    >>
bitwise         AND	&
bitwise         XOR	^
bitwise         OR	|
relational and type test	    >=    >    <=    <    as    is    is!
equality	        ==    !=
logical AND	        &&
logical OR	        ||
if null	            ??
conditional	          expr1 ? expr2 : expr3
cascade	            ..
assignment	      =    *=    /=    ~/=    %=    +=    -=    <<=    >>=    &=    ^=    |=    ??=

 */


/*
Dart also supports both prefix and postfix increment and decrement operators.
Operator	Meaning
++var	  var = var + 1 (expression value is var + 1)
var++	  var = var + 1 (expression value is var)
--var	  var = var – 1 (expression value is var – 1)
var--	  var = var – 1 (expression value is var)

 */
prefix(){
  //uses of prefix and postfix increment and decrement operators
  var a, b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}

/*
Equality and relational operators

Operator	Meaning
==	    Equal; see discussion below
!=	    Not equal
>	      Greater than
<	      Less than
>=	    Greater than or equal to
<=	    Less than or equal to

 */
equality(){
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

}

/*

Operator	Meaning
as	    Typecast
is	    True if the object has the specified type
is!	    False if the object has the specified type

 */

typeCast(){

  var i = 10;

  if (i is int) {
    // do something
  }

  (i as int).toString();
  //but this time if i is null then it throw an exception
}

/*
Assignment operators
same as other programming language
*/
//void main(){
//  var d = 1;
//
//  d ??= 0;
//
//  print(d);
//
//}

/*
Logical operators

Operator	Meaning
!expr	  inverts the following expression (changes false to true, and vice versa)
||	  logical OR
&&	  logical AND
 */
logical(){

  var a = 10;

  if(!(a == 0) && (a > 0)){
    //do something
  }
}

/*
Conditional expressions

 */
condition(){

  bool isPublic = false;

  var visibility = isPublic ? 'public' : 'private';

  String string (String name) => name ?? "default name";
  String strings (String name) => String != null ? name : "deafult value";
}

/* other operators
Other operators
You’ve seen most of the remaining operators in other examples:

Operator	Name	Meaning
()	Function application	Represents a function call
[]	List access	Refers to the value at the specified index in the list
.	Member access	Refers to a property of an expression; example: foo.bar selects property bar from expression foo
?.	Conditional member access	Like ., but the leftmost operand can be null;
 example: foo?.bar selects property bar from expression foo unless foo is null (in which case the value of foo?.bar is null)
 */
other(){

  MyClass clazz;

  //safe call
  clazz?.getData();

  clazz.getData();


}

class MyClass{
  getData(){

  }
}


