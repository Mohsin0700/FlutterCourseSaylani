import 'package:flutter/material.dart';

class InkWellUse extends StatelessWidget {
  const InkWellUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onLongPress: () {
            print('Long press on containr');
          },
          onTap: () {
            print('one tap on contaiiner');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
