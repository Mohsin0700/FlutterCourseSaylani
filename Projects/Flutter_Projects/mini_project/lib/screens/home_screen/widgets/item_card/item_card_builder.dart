import 'package:flutter/material.dart';
import 'package:mini_project/Constants/static_data/all_items.dart';
import 'package:mini_project/screens/home_screen/widgets/item_card/item_card.dart';
import 'package:mini_project/screens/single_page_screen/single_page_screen.dart';

class ItemCardBuilder extends StatefulWidget {
  const ItemCardBuilder({super.key});

  @override
  State<ItemCardBuilder> createState() => _ItemCardBuilderState();
}

class _ItemCardBuilderState extends State<ItemCardBuilder> {
  final List<Map<String, dynamic>> recommendedItems = [];

  void filterRecommendedItems() {
    for (var element in AllItems.allItems) {
      if (element['isRecommended'] == true) {
        recommendedItems.add(element);
      }
    }
  }

  @override
  void initState() {
    filterRecommendedItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 5),
          itemCount: recommendedItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SinglePageScreen(
                            myItem: recommendedItems[index],
                          ))),
              child: ItemCard(
                itemName: recommendedItems[index]['itemName'],
                itemCategory: recommendedItems[index]['itemCategory'],
                itemPrice: recommendedItems[index]['itemPrice'].toString(),
                itemPic: recommendedItems[index]['itemPic'][0],
                cartItem: recommendedItems[index],
              ),
            );
          }),
    );
  }
}
