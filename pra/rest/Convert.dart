import 'dart:io';
import 'dart:collection';
import 'dart:convert';

void main() async{

	String name = "Sample.json";
	String output = "Output2.json";
	String path = "D:/Android/";

	File file = new File("$path$name");

	String input = await file.readAsString();
	var data = json.decode(input);

	var rest = data["collection"] as List;

	List<NewOutPut> list = new List();

	for (var json in rest){
		var old = new Pojo.fromJson(json);

		//capital first char
		var word = old.word;
		var cap = word[0].toUpperCase();
		var newWord = word.replaceFirst(word[0],cap,0);

		var model = new NewOutPut(word: newWord,des: old.des);
		list.add(model);
	}

	print("Compare size: ${rest.length} and ${list.length}");

	File outputFile = new File("$path$output");
	await outputFile.create();

	var writeStr = jsonEncode(list);

	await outputFile.writeAsString(writeStr);

	print("done");
}

class NewOutPut{

	String word;
	String des;

	NewOutPut({this.word,this.des});

	Map toJson() => {"word":word, "des":des};
}

class Pojo{
	String word;
	String des;
	String img;

	Pojo({this.word,this.des,this.img});

	factory Pojo.fromJson(Map<String, dynamic> json){
		return new Pojo(
				word: json["word"] as String,
				des: json["des"] as String,
				img: json["img"] as String
		);
	}

}