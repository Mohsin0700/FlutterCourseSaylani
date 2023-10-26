import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/Constants/static_data/cart.dart';
import 'package:mini_project/screens/home_screen/home_screen.dart';

class ItemCard extends StatefulWidget {
  final String itemName;
  final String itemCategory;
  final String itemPrice;
  final String itemPic;
  final Map<String, dynamic> cartItem;
  const ItemCard({
    super.key,
    required this.itemName,
    required this.itemCategory,
    required this.itemPrice,
    required this.itemPic,
    required this.cartItem,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  addItem(item) {
    setState(() {
      CartItems.cartItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffE0E2EE),
      ),
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1))),
                  child: Image(
                    image: AssetImage(widget.itemPic),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ))),
          Text(widget.itemName, style: CustomTextStyle.itemNameStyle),
          Text(widget.itemCategory,
              style: TextStyle(color: MyAppColors.black3)),
          const Spacer(),
          Container(
            // color: Colors.amber,
            width: MediaQuery.of(context).size.width * 0.9,
            height: 30,
            child: Stack(children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyAppColors.whiteColor),
                  child: Row(
                    children: [
                      Text('unit', style: TextStyle(color: MyAppColors.black3)),
                      const SizedBox(width: 3),
                      Text(widget.itemPrice,
                          style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: -8,
                  right: -6,
                  child: IconButton(
                      onPressed: () {
                        addItem(widget.cartItem);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      icon:
                          Icon(Icons.add_circle, color: MyAppColors.baseColor)))
            ]),
          )
        ],
      ),
    );
  }
}

class CustomTextStyle {
  static TextStyle itemNameStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
}
