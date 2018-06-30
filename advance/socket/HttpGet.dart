import 'package:http/http.dart' as http;
import 'dart:async';

void main() async{

  String url = "https://httpbin.org/";
  String notFound = "https://httpbin.org/dart";

  var response = await http.get(url);

  print("Status Code: ${response.statusCode}");
  print(response.body);

}