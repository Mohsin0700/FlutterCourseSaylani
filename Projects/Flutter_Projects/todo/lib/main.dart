import 'package:flutter/material.dart';
import 'package:todo/home.dart';
// import 'package:todo/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: DefaultTabController(length: 3, child: HomePage()),
      home: HomePage(),
    );
  }
}
