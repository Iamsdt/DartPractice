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

  var query = await conn.prepare('insert into teachers (name,topic) values (?,?)');
  await insert(query,'Bob', 'Science');
  await insert(query, 'Mary', 'Shop');

}

void insert(var query, String name, String topic) async {
  var result = await query.execute([name,topic]);
  print('New user id = ${result.insertId}');
}