import 'package:assignment1/call_screen.dart';
import 'package:assignment1/group_Screen.dart';
import 'package:assignment1/single_chat.dart';
import 'package:assignment1/status_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 113, 23),
          title: const Text('WhatsApp'),
          actions: [
            IconButton(
                onPressed: () {
                  print('Function Called');
                },
                icon: const Icon(Icons.camera_alt_outlined)),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search_rounded),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.more_vert),
            const SizedBox(
              width: 10,
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        body: const TabBarView(children: [
          GroupScreen(),
          SingleChat(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
