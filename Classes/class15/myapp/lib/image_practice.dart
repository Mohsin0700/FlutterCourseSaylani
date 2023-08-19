import 'package:flutter/material.dart';

class ImagePractice extends StatelessWidget {
  const ImagePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Images in flutter'),
          backgroundColor: Colors.lime,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image.network(
              //     'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Land_Rover_Range_Rover_Autobiography_2016.jpg/1200px-Land_Rover_Range_Rover_Autobiography_2016.jpg'),
              // Image.network(
              //     'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Range-rover-2015643.jpg/1200px-Range-rover-2015643.jpg'),
              // Image.network(
              //     'https://c8.alamy.com/comp/2B87ME6/english-2012-land-rover-range-rover-l405-vogue-sdv8-wagon-photographed-at-the-2012-australian-international-motor-show-sydney-new-south-wales-australia-26-october-2012-own-work-osx-2B87ME6.jpg'),
              // Image.network('https://i.ytimg.com/vi/hrLQ7pP78eQ/mqdefault.jpg'),
              Image.asset('assets/images/lake.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
