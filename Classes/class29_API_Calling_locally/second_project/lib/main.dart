import 'package:flutter/material.dart';
import 'package:second_project/api.dart';
// import 'package:second_project/practice_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Practice_screen(),
      home: ApiCalling(),
    );
  }
}
