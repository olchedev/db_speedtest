import 'package:flutter/material.dart';

class TestDBSpeedView extends StatelessWidget {
  const TestDBSpeedView({
    required this.dbName,
    Key? key,
  }) : super(key: key);

  final String dbName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dbName),
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
                  onPressed: () {},
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
}
