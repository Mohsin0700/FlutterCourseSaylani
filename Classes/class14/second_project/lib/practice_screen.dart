import 'package:flutter/material.dart';
import 'package:second_project/myContainer.dart';

class Practice_screen extends StatelessWidget {
  const Practice_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Second Flutter App'),
          backgroundColor: const Color.fromARGB(255, 12, 19, 19),
        ),
        body: Container(
          width: double.infinity,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MyContainer(r: 100, g: 100, b: 100, l: 0.2),
              SizedBox(
                height: 200,
              ),
              MyContainer(r: 50, g: 200, b: 50, l: 0.5),
              MyContainer(r: 90, g: 80, b: 70, l: 0.3),
              // Spacer(),
              MyContainer(r: 120, g: 10, b: 40, l: 0.1),
              // MyContainer(r: 200, g: 200, b: 200, l: 0.4),
            ],
          ),
        ));
  }
}
