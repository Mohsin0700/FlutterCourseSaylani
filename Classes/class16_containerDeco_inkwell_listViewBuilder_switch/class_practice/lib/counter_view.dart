import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int val = 2;

  addval() {
    setState(() {
      val++;
    });
  }

  clearVal() {
    setState(() {
      val = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Telecounter'),
          backgroundColor: Colors.lime,
          foregroundColor: Color.fromARGB(221, 60, 3, 3),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$val',
                style: const TextStyle(fontSize: 72),
              ),
              ElevatedButton(
                onPressed: () {
                  addval();
                },
                child: const Text(
                  'Press',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  clearVal();
                },
                child: const Text('Clear'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
