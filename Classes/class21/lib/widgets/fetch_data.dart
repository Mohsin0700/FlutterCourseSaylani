import 'package:flutter/material.dart';

class FetchData extends StatelessWidget {
  const FetchData({super.key});

  fetchData() async {
    print('Hello World ');
    await Future.delayed(const Duration(seconds: 5));
    print('Data has been fetched successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fetch Data')),
      body: Center(
        child: ElevatedButton(
          onPressed: fetchData,
          child: const Text('Fetch'),
        ),
      ),
    );
  }
}
