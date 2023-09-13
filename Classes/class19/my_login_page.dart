import 'package:flutter/material.dart';
import 'package:revision1/class7_19/custom_button.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  showPageName() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('This is Login Page'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyCustomButton(
              buttonName: 'Login Button',
              buttonFunc: showPageName,
            )
            // ElevatedButton(
            //   onPressed: () {
            //     showPageName();
            //   },
            //   child: const Text('Show page name'),
            // ),
          ],
        ),
      ),
    );
  }
}
