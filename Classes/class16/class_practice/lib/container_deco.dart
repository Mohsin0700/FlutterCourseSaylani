import 'package:flutter/material.dart';

bool isOn = false;

class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  Color? finalColor;

  switchLight() {
    isOn = !isOn;
    setState(() {
      finalColor = getCorrectColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: finalColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(100, 100),
                      topRight: Radius.elliptical(100, 100))),
            ),
            ElevatedButton(
                onPressed: () {
                  switchLight();
                },
                child: const Text('ON/OFF'))
          ],
        ),
      ),
    );
  }
}

Color getCorrectColor() {
  return isOn ? Colors.yellow : Colors.black;
}
