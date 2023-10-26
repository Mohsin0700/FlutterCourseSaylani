import 'package:flutter/material.dart';
import 'package:practice/bike.dart';
import 'package:practice/car.dart';

class IconPractice extends StatelessWidget {
  const IconPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_transit_filled)),
            ]),
          ),
          body: const TabBarView(
            children: [
              // Icon(Icons.directions_car),
              // Icon(Icons.directions_bike),
              // Icon(Icons.directions_transit),
              Car(),
              Bike(),
              Icon(Icons.directions_transit),
            ],
            //  const Column(
            // children: [
            // Text('Hello World'),
            // Icon(Icons.home_filled),
            // Icon(Icons.phone),
            // Icon(Icons.phone_android),
            // Icon(Icons.phone_android_outlined),
            // Icon(Icons.phone_android_rounded),
            // Icon(Icons.phone_android_sharp),
            // Icon(Icons.phone_callback),
            // Icon(Icons.call_made),
            // Icon(Icons.call_received),
            // Icon(Icons.woman),
            // ],
          ),
        ),
      ),
    );
  }
}
