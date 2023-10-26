import 'package:flutter/material.dart';

class CartBottomBoxRow extends StatelessWidget {
  const CartBottomBoxRow(
      {super.key, required this.rowTitle, required this.rowPrice});
  final String rowTitle;
  final int rowPrice;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(rowTitle, style: TextAndPriceStyle.itemTextStyle),
      Text(rowPrice.toString(), style: TextAndPriceStyle.priceTextStyle)
    ]);
  }
}

class TextAndPriceStyle {
  static TextStyle itemTextStyle =
      const TextStyle(color: Color(0xff616A7D), fontSize: 20);

  static TextStyle priceTextStyle = const TextStyle(fontSize: 20);
}
