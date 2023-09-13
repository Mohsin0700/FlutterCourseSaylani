import 'package:flutter/material.dart';
import 'package:practice/font.dart';
// import 'package:practice/media_query.dart';
// import 'package:practice/navigation.dart';
// import 'package:practice/views/confirm_view.dart';
// import 'package:practice/navigation.dart';
// import 'package:practice/views/home_view.dart';
// import 'package:practice/views/order_view.dart';
// import 'package:practice/grid_view.dart';
// import 'package:practice/grid_view_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Tilt'),
      // home: SimpleGridView(),
      // home: GridViewBuilder(),
      // home: NavigationLearning(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const NavigationLearning(),
      //   '/home': (context) => const HomeView(),
      //   '/order': (context) => const OrderView(),
      //   '/order/confirm': (context) => const ConfirmView(),
      // },
      // home: MediaQueryPractice(),
      home: Fonts(),
    );
  }
}
