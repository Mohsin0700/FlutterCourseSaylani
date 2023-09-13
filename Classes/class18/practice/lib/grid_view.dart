import 'package:flutter/material.dart';

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            color: Colors.black87,
            height: 100,
          ),
        ],
      ),
    );
  }
}
