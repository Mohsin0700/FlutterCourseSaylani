import 'package:flutter/material.dart';

class ListTyle extends StatelessWidget {
  const ListTyle({
    super.key,
    required this.name,
    required this.msg,
    required this.time,
    required this.img,
  });

  final String name;
  final String msg;
  final String time;
  final String img;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
      ),
      title: Text(name),
      subtitle: Text(msg),
      trailing: Text(time),
    );
  }
}
