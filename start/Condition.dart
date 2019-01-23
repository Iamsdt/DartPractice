//https://www.dartlang.org/guides/language/language-tour#control-flow-statements


/*Cover

Control flow statements
You can control the flow of your Dart code using any of the following:

if and else

for loops

while and do-while loops

break and continue

switch and case

assert

 */
ifElse(){
  bool isOk = false; // ignore: unused_local_variable
  bool isNot = false;
  if(isNot){
    //do something
  } else if(isNot){
    //do something
  } else{
    //do something
  }
}

//for loops
forLoop(){

  var list = [0,1,2,3,4,5,6,7,8,9,10];

  //like c and java style
  for (int i = 0; i <= list.length - 1;i++){
    print(list[i]);
  }

  //for each
  for (var item in list){
    print(item);
  }

  //for Each
  list.forEach((i) => print(i));
}

//do while while
doWhile(){
  bool run = true;
  while(run){
    //do something
  }

  do{
    //do something
  }while(!run);
}

//break and continue
breakCon(){
  bool run = true;

  while(true){
    if(!run){
      break;
    }
  }

  //con

  var list = [0,1,2,3,4,5,6,7,8,9,10];

  //like c and java style
  for (int i = 0; i <= list.length - 1;i++){

    if(i == 5){
      continue;
    }
    print(list[i]);
  }

}

//switch
switchCase(){
  String s = "Switch";

  switch(s){
    case "Shudipto":
      //do something
      break;
    case "Trafder":
      break;
  }
}


//Assert
/*
Assert
Use an assert statement to disrupt normal execution
 if a boolean condition is false.
 You can find examples of assert statements throughout this tour
 */
assertExp(){
  var urlString = "";
  // Make sure this is an https URL.
  assert(urlString.startsWith('https'));
}