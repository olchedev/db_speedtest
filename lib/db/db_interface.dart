abstract class DBInterface {
  void createTable({required String tableName}) {}

  // getTableByName({required String tableName}) {}

  void insert({
    // required dbInstance,
    required String tableName,
    required Map values,
  });

  void read({
    required dbInstance,
    required String table,
  });

  void update({
    required dbInstance,
    required String table,
    required Map values,
  });

  void delete({
    required dbInstance,
    required String table,
  });
}
