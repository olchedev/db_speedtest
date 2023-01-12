import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TestDBSpeedView extends StatefulWidget {
  const TestDBSpeedView({
    required this.dbName,
    required this.dbInstance,
    Key? key,
  }) : super(key: key);

  final String dbName;
  final dbInstance;

  @override
  State<TestDBSpeedView> createState() => _TestDBSpeedViewState();
}

class _TestDBSpeedViewState extends State<TestDBSpeedView> {
  DateTime? createStartTime;
  DateTime? createEndTime;
  // late Box? table;
  //
  // @override
  // void initState() async {
  //   _createTable();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dbName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    _create();
                  },
                  child: const Text('Create 100 items'),
                ),
              ),
              const Text('Time spent: 0.0'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Read 100 items'),
                ),
              ),
              const Text('Time spent: 0.0'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Update 100 items'),
                ),
              ),
              const Text('Time spent: 0.0'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Delete 100 items'),
                ),
              ),
              const Text('Time spent: 0.0'),
            ],
          ),
        ],
      ),
    );
  }

  // void _createTable() async {
  //   await widget.dbInstance.createTable(tableName: 'users');
  //
  // }

  void _create() async {
    setState(() {
      createStartTime = DateTime.now();
    });

    List<Map> userList = [];

    for (var i = 1; i <= 10; i++) {
      userList.add({
        'name': 'Tom',
        'age': '28',
        'email': 'tom@gmail.com',
      });
    }

    widget.dbInstance.insert(
      tableName: 'users',
      values: userList,
    );

    setState(() {
      createEndTime = DateTime.now();
    });
  }

  // void _read(dbInstance) {}
}
