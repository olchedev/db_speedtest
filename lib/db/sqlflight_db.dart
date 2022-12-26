import 'package:db_speed/db/abstract_db.dart';
import 'package:sqflite/sqflite.dart';

class SqlflightDB extends AbstractDB {
  SqlflightDB._();

  static final SqlflightDB _instance = SqlflightDB._();

  static SqlflightDB get instance => _instance;

  Future<Database> openDB() async {
    Database database = await openDatabase(
      'user.db',
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE User ('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'age INTEGER, '
          'email TEXT'
          ')',
        );
      },
    );

    return database;
  }

  @override
  void create() async {
    final db = await openDB();
    await db.transaction(
      (txn) async {
        await txn.rawInsert(
          'INSERT INTO User(name, age, email) '
          'VALUES("Tiffany", 24, test@gmail.com)',
        );
      },
    );
    await db.close();
  }

  @override
  void delete() async {
    final db = await openDB();
    await db.rawDelete('DELETE FROM User WHERE name = ?', ['Tom']);
    await db.close();
  }

  @override
  void read() async {
    final db = await openDB();
    await db.rawQuery('SELECT * FROM User');
    await db.close();
  }

  @override
  void update() async {
    final db = await openDB();
    await db.rawUpdate(
      'UPDATE User SET name = ?, value = ? WHERE name = ?',
      ['Tom', '76', 'tom@gmail.com'],
    );
    await db.close();
  }
}
