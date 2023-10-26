import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 150,
        child: Stack(
          children: [
            Container(
              height: 100,
              color: Colors.red,
            ),
            const Positioned(
              top: 50,
              left: 30,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.yellow,
              ),
            ),
            const Positioned(
              bottom: 10,
              left: 110,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
