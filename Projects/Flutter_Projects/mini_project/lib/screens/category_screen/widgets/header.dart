import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/Constants/app_strings.dart';
import 'package:mini_project/Constants/static_data/cart.dart';
import 'package:mini_project/screens/cart_screen/cart_screen.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, bottom: 20),
      decoration: BoxDecoration(
        color: MyAppColors.baseColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 40, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hey, ${MyAppString.customerName}',
                  style: TextStyle(color: MyAppColors.whiteColor, fontSize: 20),
                ),
                Container(
                  width: 40,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(top: 1, right: 2),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen())),
                    child: Stack(
                      children: [
                        Icon(
                          Icons.shopping_basket_rounded,
                          color: MyAppColors.whiteColor,
                          size: 30,
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: MyAppColors.appOrange,
                            child: Text(
                              CartItems.cartItems.length.toString(),
                              style: TextStyle(color: MyAppColors.whiteColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Text('Shop',
              style: TextStyle(fontSize: 50, color: Colors.white)),
          const Text(
            'By Category',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
