import 'package:flutter/material.dart';

class SingleChild extends StatelessWidget {
  // const SingleChild({super.key});
  const SingleChild({super.key, required this.child});

  final Map<String, dynamic> child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(child['title'])],
            // children: [Text('Hello World')],
          ),
        ),
      ),
    );
  }
}
