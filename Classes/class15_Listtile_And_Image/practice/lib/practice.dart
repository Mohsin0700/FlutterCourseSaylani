import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('This is body'),
            Text('This is body 2'),
            Image(
              image: AssetImage('assets/a.jpg'),
            ),
            Image(
              image: AssetImage('assets/b.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
