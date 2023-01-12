import 'package:sqflite/sqflite.dart';
import 'package:db_speed/db/db_interface.dart';

class SqlflightDB implements DBInterface {
  SqlflightDB._();

  static final SqlflightDB _instance = SqlflightDB._();

  static SqlflightDB get instance => _instance;

  @override
  void createTable({required String tableName}) async {
    await openDatabase(
      tableName,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE $tableName ('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'age INTEGER, '
          'email TEXT'
          ')',
        );
      },
    );
  }

  @override
  getTableByName({required String tableName}) {
    // TODO: implement getTableByName
    throw UnimplementedError();
  }

  @override
  void insert({
    // required dbInstance,
    required tableName,
    required Map values,
  }) async {
    // await dbInstance.transaction(
    //   (txn) async {
    //     await txn.rawInsert(
    //       "INSERT INTO $tableName(${values.keys}) "
    //       'VALUES(${values.values})',
    //     );
    //   },
    // );
    // await dbInstance.close();
  }

  @override
  void read({
    required dbInstance,
    required String table,
  }) async {
    await dbInstance.rawQuery("SELECT * FROM $table");
    await dbInstance.close();
  }

  @override
  void update({
    required dbInstance,
    required String table,
    required Map values,
  }) async {
    await dbInstance.rawUpdate(
      "UPDATE $table SET ${values.keys.join(' = ?')} WHERE id = values['id']",
      values.values,
    );
    await dbInstance.close();
  }

  @override
  void delete({
    required dbInstance,
    required String table,
  }) async {
    await dbInstance.rawDelete("DELETE FROM $table WHERE name = ", ['Tom']);
    await dbInstance.close();
  }
}
