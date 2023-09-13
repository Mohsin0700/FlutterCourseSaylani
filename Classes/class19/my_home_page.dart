import 'package:flutter/material.dart';
import 'package:revision1/class7_19/custom_button.dart';
import 'package:revision1/class7_19/my_login_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  showPageName() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('This is Homepage'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     showPageName();
            //   },
            //   child: const Text('Show page name'),
            // ),
            MyCustomButton(
              buttonName: 'My Homepage button',
              buttonFunc: showPageName,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyLoginPage()));
                  },
                  icon: const Icon(Icons.arrow_circle_right_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
