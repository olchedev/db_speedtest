import 'package:db_speed/screens/test_db_speed_view.dart';
import 'package:flutter/material.dart';

class PickDBView extends StatelessWidget {
  const PickDBView({Key? key}) : super(key: key);

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
                      builder: (context) => const TestDBSpeedView(
                        dbName: 'Hive',
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
                      builder: (context) => const TestDBSpeedView(
                        dbName: 'Sqflite',
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
                      builder: (context) => const TestDBSpeedView(
                        dbName: 'Drift',
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
