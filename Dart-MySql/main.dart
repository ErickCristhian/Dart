import 'package:args/args.dart';
import 'package:dart_mysql/connection.dart';

main(List<String> arguments) async{
  var parser = new ArgParser();
  parser.addOption('mode', defaultsTo: 'select', 
  allowed: ['select-all', 'select', 'insert', 'update', 'delete', 'create-table']
  );

  parser.addOption('id');
  parser.addOption('first_name');
  parser.addOption('last_name');

  var conn = await MySql.connect(host: 'localhost', user: 'root', db: 'dart_mysql');

  var args = parser.parse(arguments);
  print('Executing in mode: ' + args['mode']);

  if(args['mode'] == 'select' || args['mode'] == 'select-all' && args['id'] != null) {
    String sql = 'SELECT * FROM users;';
    List data = [];

    var results = await conn.query(sql, data);

    for(var row in results) {  
      print('');
      print('---');
      print('id: ' + row['id'].toString());
      print('first_name: ' + row['first_name']);
      print('last_name: ' + row['last_name']);
    }

    print('Total: ' + results.length.toString());
  }else if(args['mode'] == 'select-all'){
    print('...');
  }else if(args['mode'] == 'insert'){
    var sql = 'INSERT INTO users (first_name, last_name) VALUES (?, ?)';
    await conn.query(sql,[
      args['first_name'],
      args['last_name']
    ]);
    print('done');
  }else if(args['mode'] == 'update'){
    String sql = 'UPDATE users SET';
    List data = [];

    if (args['first_name'] != null) {
      sql += ' first_name=?';
      data.add(args['first_name']);
    }

    if(args['first_name'] != null && args['last_name'] != null){
      sql += ',';
    }

    if (args['last_name'] != null) {
      sql += ' last_name=?';
      data.add(args['last_name']);
    }

    if (args['id'] != null) {
      sql += ' WHERE id=?';
      data.add(args['id']);
    }

    await conn.query(sql, data);
    print('done');
  }else if(args['mode'] == 'delete'){
    String sql = 'DELETE FROM users';
    List data = [];
    if(args['id'] != null){
      sql += ' WHERE id=?';
      data.add(args['id']);
    }

    await conn.query(sql, data);
    print('done');
    
  }else if(args['mode'] == 'create-table'){
   var sql = """
      CREATE TABLE `users` (
        `id` int NOT NULL AUTO_INCREMENT,
        `first_name` varchar(100) NOT NULL,
        `last_name` varchar(100) NOT NULL,
        PRIMARY KEY (`id`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    """;
    await conn.query(sql);
    print('done');
  }

  conn.close();
}