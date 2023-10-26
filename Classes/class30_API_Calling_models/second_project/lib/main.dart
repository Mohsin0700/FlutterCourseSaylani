import 'package:flutter/material.dart';
import 'package:second_project/more_complex_practice/main2.dart';
// import 'package:second_project/widgets/api_using_model.dart';
// import 'package:second_project/api.dart';
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
      // home: ApiCalling(),
      home: Main2(),
    );
  }
}
