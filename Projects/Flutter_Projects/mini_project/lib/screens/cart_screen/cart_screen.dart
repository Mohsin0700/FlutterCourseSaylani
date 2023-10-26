import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/Constants/static_data/cart.dart';
import 'package:mini_project/screens/cart_screen/widgets/bottom_box_row.dart';
import 'package:mini_project/screens/cart_screen/widgets/cart_custom_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  increaseItem(i) {
    setState(() {
      CartItems.cartItems[i]['cartItemCount']++;
    });
  }

  decreaseItem(i) {
    setState(() {
      if (CartItems.cartItems[i]['cartItemCount'] > 0) {
        CartItems.cartItems[i]['cartItemCount']--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
                'Shopping Cart (${CartItems.cartItems.length.toString()})')),
        body: Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Column(children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: CartItems.cartItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            // tileColor: Colors.red,
                            leading: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image(
                                  width: 75,
                                  image: AssetImage(CartItems.cartItems[index]
                                      ['itemPic'][0])),
                            ),
                            title: Text(CartItems.cartItems[index]['itemName']),
                            subtitle: Text(CartItems.cartItems[index]
                                    ['itemPrice']
                                .toString()),
                            trailing:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              IconButton(
                                  onPressed: () {
                                    decreaseItem(index);
                                  },
                                  icon: const Icon(Icons.remove_circle)),
                              Text(CartItems.cartItems[index]['cartItemCount']
                                  .toString()),
                              IconButton(
                                  onPressed: () {
                                    increaseItem(index);
                                  },
                                  icon: const Icon(Icons.add_circle))
                            ]));
                      })),
              Container(
                  margin: const EdgeInsets.only(top: 10, right: 30, bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Edit',
                            style: TextStyle(
                                color: MyAppColors.baseColor, fontSize: 15))
                      ])),
              Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      // color: Colors.red,
                      height: 150,
                      padding: const EdgeInsets.only(left: 15, right: 25),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartBottomBoxRow(
                                rowTitle: 'Subtotal', rowPrice: 1250),
                            CartBottomBoxRow(
                                rowTitle: 'Delivery', rowPrice: 150),
                            CartBottomBoxRow(
                                rowTitle: 'Subtotal', rowPrice: 1400),
                            CartCustomButton()
                          ])))
            ])));
  }
}
