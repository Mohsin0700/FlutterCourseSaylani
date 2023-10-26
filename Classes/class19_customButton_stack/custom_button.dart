import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String buttonName;
  final void Function()? buttonFunc;
  const MyCustomButton({super.key, required this.buttonName, this.buttonFunc});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: buttonFunc, child: Text(buttonName));
  }
}
