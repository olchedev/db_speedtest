import 'package:db_speed/screens/pick_db_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(300.0, 50.0),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(150.0, 50.0),
            ),
          ),
        ),
      ),
      home: const PickDBView(),
    );
  }
}
