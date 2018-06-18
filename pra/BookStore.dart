import 'dart:io';

const List<String> bookList = ["C","JAVA","C++","DART","PYTHON"];

var studentDiscount = 0.3;
var teacherDiscount = 0.2;

void main(){
  print("######## WELCOME TO OUR BOOK STORE #########");

  print("\n\nWhich book do you want?");
  print("Answer:");
  String answer  = getUserInput();

  if(bookList.contains(answer.toUpperCase())){
    print("We have $answer book.");
    price();
  } else {
    print("Sorry we don't have $answer book.");
    runAgain();
  }
}

runAgain(){
  print("Do you want more book?");
  print("Answer:");
  String ans = getUserInput();
  if(ans.toLowerCase()=="yes"){
    print("\n\n");
    main();
  } else{
    print("***********Thank you for shopping**********");
  }
}

price(){
  print("Price is 200 TK.");
  print("\nAre you student or teacher?");
  print("Answer:");
  String occ = getUserInput().toLowerCase();
  if(occ == "student"){
    discount(studentDiscount);
  } else if (occ == "teacher"){
    discount(teacherDiscount);
  } else {
    discount(0.0);
  }
}

discount(double discount){
  double price = 200.0;
  price = price - (price * discount);

  print("\nYour total payable price is $price TK");
  runAgain();
}

String getUserInput() => stdin.readLineSync();