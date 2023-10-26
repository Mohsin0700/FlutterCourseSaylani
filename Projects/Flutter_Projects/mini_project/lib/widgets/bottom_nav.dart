import 'package:flutter/material.dart';
import 'package:mini_project/screens/category_screen/category_screen.dart';
import 'package:mini_project/screens/home_screen/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  static const List<Widget> widgetoptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    Text('Favourite'),
    Text('More'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetoptions.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: 'More',
          ),
        ],
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        currentIndex: index,
      ),
    );
  }
}
