import 'package:flutter/material.dart';

class MediaQueryPractice extends StatelessWidget {
  const MediaQueryPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          color: Colors.lime,
        )
      ],
    );
  }
}
