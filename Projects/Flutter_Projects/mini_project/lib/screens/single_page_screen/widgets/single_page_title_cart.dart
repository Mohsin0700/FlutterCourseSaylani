import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/Constants/static_data/cart.dart';
import 'package:mini_project/screens/cart_screen/cart_screen.dart';

class SinglePageTitleCart extends StatelessWidget {
  const SinglePageTitleCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(top: 1, right: 2),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CartScreen())),
        child: Stack(
          children: [
            Icon(
              Icons.shopping_basket_outlined,
              color: MyAppColors.black3,
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
    );
  }
}
