import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          DefaultTabController(length: 3, child: Expanded(child: Todo())),
        ],
      ),
    );
  }
}
