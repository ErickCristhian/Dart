import 'dart:async';
import 'package:dart_mysql/connection.dart';

main() async{
  var conn = await MySql.connect(host: 'localhost', user: 'root', db: 'dart_mysql');

  await conn.queryMulti('INSERT INTO users (first_name, last_name) VALUES (?, ?)', [
    ['Erick', 'Cristhian'],
    ['Jorge', 'ven'],
    ['mark', 'l'],
    ['Stieg', 'lars']
  ]);
  
  conn.close();
}