import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Details', style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 10,
        ),
        Text(
          'Product Details, sum people have curly brown hair till painted black, lorem spum dollar',
          style: TextStyle(fontSize: 15),
        )
      ]),
    );
  }
}
