import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/Constants/static_data/all_items.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.98,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: PageView.builder(
          itemCount: AllItems.allOffers.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 15, left: 15),
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyAppColors.appOrange,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage(
                          AllItems.allOffers[index]['img'],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AllItems.allOffers[index]['text1'],
                          style: TextStyle(
                              color: MyAppColors.whiteColor, fontSize: 18),
                        ),
                        Text(
                          AllItems.allOffers[index]['text2'],
                          style: TextStyle(
                              color: MyAppColors.whiteColor, fontSize: 36),
                        ),
                        Text(
                          AllItems.allOffers[index]['text3'],
                          style: TextStyle(
                              color: MyAppColors.whiteColor, fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
