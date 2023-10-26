import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';

class MyFontStyle {
  static TextStyle myTextStyle = TextStyle(color: MyAppColors.secondaryColor);
  static TextStyle mySecondTextStyle =
      TextStyle(fontSize: 15, color: MyAppColors.offWhiteColor);
}

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DELIVERY TO', style: MyFontStyle.myTextStyle),
              Text(
                'Clifton, Karachi',
                style: MyFontStyle.mySecondTextStyle,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WITHIN',
                style: MyFontStyle.myTextStyle,
              ),
              Text(
                '2 Hours',
                style: MyFontStyle.mySecondTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
