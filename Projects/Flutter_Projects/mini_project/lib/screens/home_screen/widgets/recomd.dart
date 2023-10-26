import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: const Text(
        'Recommended',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
