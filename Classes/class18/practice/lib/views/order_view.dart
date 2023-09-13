import 'package:flutter/material.dart';
// import 'package:practice/views/confirm_view.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/order/confirm');
          },
          // onPressed: () => Navigator.pushReplacement(context,
          // MaterialPageRoute(builder: (context) => const ConfirmView())),
          child: const Text('Go to Confirmation Screen'),
        ),
      ),
    );
  }
}
