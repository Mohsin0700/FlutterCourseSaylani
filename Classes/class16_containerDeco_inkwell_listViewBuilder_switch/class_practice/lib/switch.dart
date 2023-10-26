import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isOn = false;

  switchBtn() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isOn ? 'Light is ON' : 'Light is OFF',
                style: const TextStyle(fontSize: 62),
              ),
              ElevatedButton(
                onPressed: () {
                  switchBtn();
                },
                child: const Text('Switch'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
