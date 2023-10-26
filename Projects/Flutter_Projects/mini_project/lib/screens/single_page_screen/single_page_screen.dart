import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/screens/single_page_screen/widgets/item_details.dart';
import 'package:mini_project/screens/single_page_screen/widgets/item_name.dart';
import 'package:mini_project/screens/single_page_screen/widgets/item_rate.dart';
import 'package:mini_project/screens/single_page_screen/widgets/single_page_custom_button.dart';
import 'package:mini_project/screens/single_page_screen/widgets/single_page_title_cart.dart';
import 'package:mini_project/screens/single_page_screen/widgets/slider.dart';
// import 'package:mini_project/screens/single_page_screen/widgets/slider.dart';

class SinglePageScreen extends StatelessWidget {
  final Map<String, dynamic> myItem;
  const SinglePageScreen({super.key, required this.myItem});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios)),
                  Text('Product Name',
                      style:
                          TextStyle(fontSize: 16, color: MyAppColors.black3)),
                  const SinglePageTitleCart(),
                ],
              ),
              Expanded(
                  child: MyCarousel(
                myItemImages: myItem['itemPic'],
              )),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0xffF8F9FB),
                      borderRadius: BorderRadius.circular(45)),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ItemName(),
                      const ItemRate(),
                      const ItemDetails(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'About Author',
                        style: MyStyle.myTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'About Author',
                        style: MyStyle.myTextStyle,
                      ),
                      const Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SinglePageCustomeButton(
                              buttonName: 'Add to Cart',
                            ),
                            SinglePageCustomeButton(
                              buttonName: 'Buy Now',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyStyle {
  static TextStyle myTextStyle =
      TextStyle(fontSize: 18, color: MyAppColors.black3);
}
