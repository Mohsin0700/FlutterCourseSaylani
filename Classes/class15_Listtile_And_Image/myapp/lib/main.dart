import 'package:flutter/material.dart';
import 'package:myapp/image_practice.dart';
// import 'package:myapp/my_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: MyScreen(),
      home: ImagePractice(),
    );
  }
}
