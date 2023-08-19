import 'package:assignment1/list_tyle.dart';
import 'package:flutter/material.dart';

class SingleChat extends StatelessWidget {
  const SingleChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Munawar',
            msg: 'Han abba kahan ho',
            time: '05:00 PM',
            img: 'assets/b.jpeg',
          ),
          ListTyle(
            name: 'Munawar',
            msg: 'Han abba kahan ho',
            time: '05:00 PM',
            img: 'assets/b.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Munawar',
            msg: 'Han abba kahan ho',
            time: '05:00 PM',
            img: 'assets/b.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
          ListTyle(
            name: 'Mohsin',
            msg: 'Hello kese ho',
            time: '12:40 AM',
            img: 'assets/a.jpeg',
          ),
        ],
      ),
    );
  }
}
