import 'package:assignment1/status_tile.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          StatusTile(
            name: 'Mohsin',
            time: '40 minutes ago',
            status: 'assets/a.jpeg',
          ),
          StatusTile(
            name: 'Arbab',
            time: '10 minutes ago',
            status: 'assets/b.jpeg',
          ),
          StatusTile(
            name: 'Mohsin',
            time: '40 minutes ago',
            status: 'assets/a.jpeg',
          ),
          StatusTile(
            name: 'Arbab',
            time: '10 minutes ago',
            status: 'assets/b.jpeg',
          ),
          StatusTile(
            name: 'Mohsin',
            time: '40 minutes ago',
            status: 'assets/a.jpeg',
          ),
          StatusTile(
            name: 'Arbab',
            time: '10 minutes ago',
            status: 'assets/b.jpeg',
          ),
          StatusTile(
            name: 'Mohsin',
            time: '40 minutes ago',
            status: 'assets/a.jpeg',
          ),
          StatusTile(
            name: 'Arbab',
            time: '10 minutes ago',
            status: 'assets/b.jpeg',
          ),
          StatusTile(
            name: 'Mohsin',
            time: '40 minutes ago',
            status: 'assets/a.jpeg',
          ),
          StatusTile(
            name: 'Arbab',
            time: '10 minutes ago',
            status: 'assets/b.jpeg',
          ),
        ],
      ),
    );
  }
}
