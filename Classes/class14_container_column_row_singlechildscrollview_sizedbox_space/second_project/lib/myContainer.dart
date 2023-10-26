import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key,
      required this.r,
      required this.g,
      required this.b,
      required this.l});

  final int r;
  final int g;
  final int b;
  final double l;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Color.fromRGBO(r, g, b, l),
      child: const Text('Data'),
    );
  }
}
