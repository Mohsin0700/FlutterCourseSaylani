// import 'package:class_practice/counter_view.dart';
// import 'package:class_practice/switch.dart';
// import 'package:class_practice/list_view.dart';
// import 'package:class_practice/my_list_view_builder.dart';
// import 'package:class_practice/ink_well.dart';
import 'package:class_practice/container_deco.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: CounterView(),
      // home: MySwitch(),
      // home: MyListView(),
      // home: MyListViewBuilder(),
      // home: InkWellUse(),
      home: ContainerDecoration(),
    );
  }
}
