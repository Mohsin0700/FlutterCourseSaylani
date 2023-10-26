import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  final List myItemImages;
  const MyCarousel({
    super.key,
    required this.myItemImages,
  });

  @override
  Widget build(BuildContext context) {
    // List productImages = [
    //   'rc1.png',
    //   'rc2.png',
    // ];
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(),
        items: myItemImages
            .map((item) => Container(
                  // color: Colors.green,
                  width: double.infinity,
                  // color: Colors.green,
                  // child: Center(child: Text(item.toString())),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90)),
                      child: Image(image: AssetImage(item))),
                ))
            .toList(),
      ),
    ]);
  }
}
