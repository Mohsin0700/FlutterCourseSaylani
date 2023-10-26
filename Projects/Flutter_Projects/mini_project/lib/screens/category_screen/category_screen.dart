import 'package:flutter/material.dart';
import 'package:mini_project/screens/category_screen/widgets/category_items.dart';
import 'package:mini_project/screens/category_screen/widgets/header.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyHeader(),
            SizedBox(
              height: 10,
            ),
            CategoryItems(),
          ],
        ),
      ),
    );
  }
}
