import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //     color: MyAppColors.baseaDarkColor,
    //     borderRadius: BorderRadius.circular(25),
    //   ),
    //   margin: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
    //   padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
    //   child: Row(
    //     children: [
    //       Icon(
    //         Icons.search,
    //         color: MyAppColors.whiteColor,
    //       ),
    //       const Expanded(
    //         child: TextField(decoration:InputDecoration(),),
    //       ),
    //     ],
    //   ),
    // );
    return Container(
        padding: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: MyAppColors.baseaDarkColor,
          borderRadius: BorderRadius.circular(25),
        ),
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
        child: TextField(
          style: TextStyle(color: MyAppColors.whiteColor),
          cursorColor: MyAppColors.whiteColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: MyAppColors.baseaDarkColor,
            icon: const Icon(Icons.search),
            iconColor: MyAppColors.whiteColor,
            hintText: 'Search Product or Store',
            hintStyle: TextStyle(color: MyAppColors.secondaryColor),
          ),
        ));
  }
}
