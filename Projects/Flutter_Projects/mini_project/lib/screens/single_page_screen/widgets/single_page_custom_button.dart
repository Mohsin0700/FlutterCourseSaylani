import 'package:flutter/material.dart';

class SinglePageCustomeButton extends StatelessWidget {
  final String buttonName;
  const SinglePageCustomeButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          minimumSize: Size(MediaQuery.of(context).size.width * 0.4, 50),
          maximumSize: Size(MediaQuery.of(context).size.width * 0.4, 50),
          // maximumSize: const Size.fromHeight(25),
          // minimumSize: const Size.fromWidth(70),
        ),
        onPressed: () {},
        child: Text(buttonName));
  }
}
