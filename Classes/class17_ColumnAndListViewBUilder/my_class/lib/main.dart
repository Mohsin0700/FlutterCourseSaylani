import 'package:flutter/material.dart';
import 'package:my_class/column_and_list_view_builder.dart';
// import 'package:my_class/practice.dart';
// import 'package:my_class/my_list_view_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: MyListViewBuilder(),
      // home: CheckDart(),
      // home: MyPractice(),
      home: ColunmAndListViewBuilder(),
    );
  }
}
