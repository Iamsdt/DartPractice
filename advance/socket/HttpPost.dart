import 'package:http/http.dart' as http;
import 'dart:async';

void main() async{

  String url = "https://httpbin.org/post";

  var response = await http.post(url,body: "name:Shudipto Colors:Blue");

  print("Status Code: ${response.statusCode}");
  print(response.body);

}