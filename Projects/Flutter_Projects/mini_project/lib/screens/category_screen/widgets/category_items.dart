import 'package:flutter/material.dart';
import 'package:mini_project/Constants/static_data/all_items.dart';
import 'package:mini_project/screens/category_screen/widgets/category_card.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: GridView.builder(
          itemCount: AllItems.CategoryItems.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return CategoryCard(
                itemName: AllItems.CategoryItems[index]['itemName'],
                itemCategory: AllItems.CategoryItems[index]['itemCategory'],
                itemPic: AllItems.CategoryItems[index]['itemPic'][0]);
          }),
    );
  }
}
