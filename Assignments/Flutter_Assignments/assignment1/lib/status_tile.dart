import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget {
  const StatusTile(
      {super.key,
      required this.name,
      required this.time,
      required this.status});

  final String name;
  final String time;
  final String status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(status),
      ),
      title: Text(name),
      subtitle: Text(time),
    );
  }
}
