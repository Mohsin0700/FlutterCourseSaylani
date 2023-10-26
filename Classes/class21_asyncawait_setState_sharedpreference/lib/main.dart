// import 'package:class21/widgets/fetch_data.dart';
import 'package:class21/widgets/local_storage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: FetchData(),
      home: MyLocalStorage(),
    );
  }
}
