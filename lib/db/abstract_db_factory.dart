import 'package:db_speed/db/sqlflight_db.dart';

import 'hive_db.dart';

abstract class AbstractDataBaseFactory {
  static createHiveInstance() {
    final db = HiveDB.instance;
    db.createTable(tableName: 'users');
    return db;
  }

  static createSqflightInstance() {
    return SqlflightDB.instance;
  }

  static createDriftInstance() {}
}
