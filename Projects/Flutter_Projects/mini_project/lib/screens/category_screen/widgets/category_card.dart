import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String itemName;
  final String itemCategory;
  final String itemPic;
  const CategoryCard(
      {super.key,
      required this.itemName,
      required this.itemCategory,
      required this.itemPic});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffE0E2EE),
      ),
      padding: const EdgeInsets.only(left: 5, right: 5),
      // width: MediaQuery.of(context).size.width * 0.1,
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1))),
              child: Image(
                image: AssetImage(itemPic),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
              )),
          Text(itemName, style: CustomTextStyle.itemNameStyle),
          Text(itemCategory, style: TextStyle(color: MyAppColors.black3)),
        ],
      ),
    );
  }
}

class CustomTextStyle {
  static TextStyle itemNameStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
}
