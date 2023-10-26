import 'package:flutter/material.dart';

class CartCustomButton extends StatelessWidget {
  const CartCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: const Size.fromHeight(50)),
        onPressed: () {},
        child: const Text('Proceed to checkout'));
  }
}
