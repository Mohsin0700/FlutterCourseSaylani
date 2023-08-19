import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  const CallTile({
    super.key,
    required this.name,
    required this.img,
    required this.time,
    required this.iconImg,
  });

  final String name;
  final String img;
  final String time;
  final Icon iconImg;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
      ),
      title: Text(name),
      subtitle: Row(
        children: [
          iconImg,
          Text(time),
        ],
      ),
      trailing: Icon(Icons.call),
    );
  }
}
