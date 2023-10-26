import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';

class ItemRate extends StatelessWidget {
  const ItemRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('4500/-',
        style: TextStyle(
            fontSize: 18,
            color: MyAppColors.baseColor,
            fontWeight: FontWeight.bold));
  }
}
