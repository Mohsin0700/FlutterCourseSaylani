import 'package:flutter/material.dart';
// import 'package:practice/views/home_view.dart';

class NavigationLearning extends StatelessWidget {
  const NavigationLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(context,
              // MaterialPageRoute(builder: (context) => const HomeView()));
              Navigator.pushNamed(context, '/home');
            },
            child: const Text('Goto Home screen')),
      ),
    );
  }
}
