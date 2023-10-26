import 'package:flutter/material.dart';
import 'package:mini_project/screens/home_screen/widgets/header/header.dart';
import 'package:mini_project/screens/home_screen/widgets/item_card/item_card_builder.dart';
import 'package:mini_project/screens/home_screen/widgets/offers.dart';
import 'package:mini_project/screens/home_screen/widgets/recomd.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyHeader(),
              Offers(),
              Recommended(),
              ItemCardBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
