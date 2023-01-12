import 'package:db_speed/db/abstract_db_factory.dart';
import 'package:db_speed/screens/test_db_speed_view.dart';
import 'package:flutter/material.dart';

class SelectDBView extends StatefulWidget {
  const SelectDBView({Key? key}) : super(key: key);

  @override
  State<SelectDBView> createState() => _SelectDBViewState();
}

class _SelectDBViewState extends State<SelectDBView> {
  final hive = AbstractDataBaseFactory.createHiveInstance();
  final sqflight = AbstractDataBaseFactory.createSqflightInstance();
  final drift = AbstractDataBaseFactory.createDriftInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text('Select the DB for speed test'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TestDBSpeedView(
                        dbName: 'Hive',
                        dbInstance: hive,
                      ),
                    ),
                  );
                },
                child: const Text('Hive'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TestDBSpeedView(
                        dbName: 'Sqflite',
                        dbInstance: sqflight,
                      ),
                    ),
                  );
                },
                child: const Text('Sqflite'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TestDBSpeedView(
                        dbName: 'Drift',
                        dbInstance: drift,
                      ),
                    ),
                  );
                },
                child: const Text('Drift'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
