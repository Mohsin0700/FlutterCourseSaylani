import 'package:flutter/material.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(title: const Text('Order Confirmation Page')),
      body: const Center(
        child: Text('Order has been placed successsfully'),
      ),
    );
  }
}
