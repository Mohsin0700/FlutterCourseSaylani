import 'package:flutter/material.dart';
import 'package:practice/icon_practice.dart';
// import 'package:practice/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Practice(),
      home: IconPractice(),
    );
  }
}
