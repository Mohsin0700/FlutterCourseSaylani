import 'package:assignment1/call_tile.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CallTile(
            name: 'Mohsin',
            time: '15 minutes ago',
            img: 'assets/a.jpeg',
            iconImg: Icon(Icons.call_received),
          ),
          CallTile(
            name: 'Munawar',
            time: '25 minutes ago',
            img: 'assets/b.jpeg',
            iconImg: Icon(Icons.call_made),
          ),
          CallTile(
            name: 'Noman',
            time: '50 minutes ago',
            img: 'assets/c.jpg',
            iconImg: Icon(Icons.call_missed),
          ),
          CallTile(
            name: 'Hasham',
            time: '1 hour ago',
            img: 'assets/d.jpeg',
            iconImg: Icon(Icons.call_received),
          ),
          CallTile(
            name: 'Mohsin',
            time: '15 minutes ago',
            img: 'assets/a.jpeg',
            iconImg: Icon(Icons.call_received),
          ),
          CallTile(
            name: 'Munawar',
            time: '25 minutes ago',
            img: 'assets/b.jpeg',
            iconImg: Icon(Icons.call_made),
          ),
          CallTile(
            name: 'Noman',
            time: '50 minutes ago',
            img: 'assets/c.jpg',
            iconImg: Icon(Icons.call_missed),
          ),
          CallTile(
            name: 'Hasham',
            time: '1 hour ago',
            img: 'assets/d.jpeg',
            iconImg: Icon(Icons.call_received),
          ),
          CallTile(
            name: 'Mohsin',
            time: '15 minutes ago',
            img: 'assets/a.jpeg',
            iconImg: Icon(Icons.call_received),
          ),
          CallTile(
            name: 'Munawar',
            time: '25 minutes ago',
            img: 'assets/b.jpeg',
            iconImg: Icon(Icons.call_made),
          ),
          CallTile(
            name: 'Noman',
            time: '50 minutes ago',
            img: 'assets/c.jpg',
            iconImg: Icon(Icons.call_missed),
          ),
          CallTile(
            name: 'Hasham',
            time: '1 hour ago',
            img: 'assets/d.jpeg',
            iconImg: Icon(Icons.call_received),
          ),
        ],
      ),
    );
  }
}
