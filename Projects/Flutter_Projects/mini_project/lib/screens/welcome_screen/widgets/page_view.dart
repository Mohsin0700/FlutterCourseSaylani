import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/Constants/app_strings.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: MyAppString.constTexts.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Text(
                  MyAppString.constTexts[index]['text']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Positioned(
                    right: 150,
                    bottom: 0,
                    child: Image(image: AssetImage('assets/images/Emoji.png')))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              MyAppString.constTexts[index]['subText']!,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: index == 0
                          ? MyAppColors.whiteColor
                          : MyAppColors.secondaryColor,
                    ),
                    height: index == 0 ? 10 : 7,
                    width: index == 0 ? 40 : 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: index == 1
                          ? MyAppColors.whiteColor
                          : MyAppColors.secondaryColor,
                    ),
                    height: index == 1 ? 10 : 7,
                    width: index == 1 ? 40 : 30,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
