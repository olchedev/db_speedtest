import 'package:db_speed/db/db_interface.dart';
import 'package:hive/hive.dart';

class HiveDB implements DBInterface {
  HiveDB._();

  static final HiveDB _instance = HiveDB._();

  static HiveDB get instance => _instance;

  // static Box getTableByName({required String tableName}) {
  //   return Hive.box(tableName);
  // }

  @override
  void createTable({required String tableName}) async {
    await Hive.openBox(tableName);
  }

  // @override
  // getTableByName({required String tableName}) {
  //   return Hive.box(tableName);
  // }

  @override
  void insert({
    // required dbInstance,
    required String tableName,
    required Map values,
  }) {
    Box table = Hive.box(tableName);
    values.forEach((key, value) {
      table.put(key, value);
    });
  }

  @override
  void read({
    required dbInstance,
    required String table,
  }) {
    dbInstance.get(table);
  }

  @override
  void update({
    required dbInstance,
    required String table,
    required Map values,
  }) {
    dbInstance.put(table, values);
  }

  @override
  void delete({
    required dbInstance,
    required String table,
  }) {
    dbInstance.delete(table);
  }
}
