import 'package:flutter/material.dart';
// import 'package:practice/views/order_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed:
                () => /*Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OrderView())),*/
                    Navigator.pushNamed(context, '/order'),
            child: const Text('Go to order Screen'),
          ),
        ));
  }
}
