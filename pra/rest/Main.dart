import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'RestModel.dart';


void main() async{

	final link = "https://swapi.co/api/starships/";

	List<RestModel> list = new List();

	var res = await http
			.get(Uri.encodeFull(link), headers: {"Accept": "application/json"});

	if (res.statusCode == 200) {
		var data = json.decode(res.body);
		var rest = data["results"] as List;
		for (var json in rest) {
			var model = new RestModel.fromJson(json);
			list.add(model);
		}
		print("List Size: ${list.length}");
	}
}