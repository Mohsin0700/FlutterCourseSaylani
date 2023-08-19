import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter Application'),
        backgroundColor: const Color.fromARGB(255, 209, 223, 128),
        foregroundColor: const Color.fromARGB(255, 24, 23, 20),
      ),
      body: const Text('This is body'),
    );
  }
}
