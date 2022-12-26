import 'package:db_speed/db/abstract_db.dart';
import 'package:hive/hive.dart';

class HiveDB extends AbstractDB {
  HiveDB._();

  static final HiveDB _instance = HiveDB._();

  static HiveDB get instance => _instance;

  final _box = Hive.box('userBox');

  @override
  void create() {
    _box.put('user', {
      'name': 'Tiffany',
      'age': 24,
      'email': 'test@gmail.com',
    });
  }

  @override
  void delete() {
    _box.delete('user');
  }

  @override
  void read() {
    _box.get('user');
  }

  @override
  void update() {
    _box.put('user', {
      'name': 'Tom',
      'age': 24,
      'email': 'test@gmail.com',
    });
  }
}
