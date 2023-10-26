import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';

class MyCustomBUtton extends StatelessWidget {
  final void Function()? onTap;
  const MyCustomBUtton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyAppColors.offWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.09,
      child: InkWell(
        onTap: onTap,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Get Started',
              style: TextStyle(
                  color: Color(0xff1E222B),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
            Icon(Icons.arrow_right_alt),
          ],
        ),
      ),
    );
  }
}
