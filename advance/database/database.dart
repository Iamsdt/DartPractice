import 'dart:io';
import 'package:sqljocky5/sqljocky.dart';

void main() async{

  var pool = new ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'bryan',
      password: 'password',
      db: 'school',
  );

  var conn = await MySqlConnection.connect(pool);

  var results = await conn.execute('Select * from teachers');

  print('Results ${await results.length} rows');

  conn.close();
  exit(0);
}