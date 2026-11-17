import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDbHelper {
  late Database db;

  Future open() async {
    var path = await getDatabasesPath();
    print("Hii $path");
    String path2 = join(path, "tops.db");

    db = await openDatabase(
      path2,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          "create table IF NOT EXISTS students(id integer primary key, name varchar(255) not null,email varchar(255) not null,password varchar(255) not null)",
        );
      },
    );
  }
}
