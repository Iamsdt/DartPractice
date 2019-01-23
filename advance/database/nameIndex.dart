import 'dart:io';
import 'package:sqljocky5/sqljocky.dart';

main(List<String> arguments) async {

  var pool = new ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'bryan',
      password: 'password',
      db: 'school'
  );

  var conn = await MySqlConnection.connect(pool);

  var results = await conn.execute('select Name, Topic from teachers');

  await results.forEach((dynamic row) {
    print('Name: ${row[0]}, Topic: ${row.row}'); //name or index


  });

  conn.close();
  exit(0);
}