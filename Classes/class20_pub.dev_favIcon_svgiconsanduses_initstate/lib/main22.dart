// // // import 'dart:async';

// // // import 'package:class20/login_screen.dart';
// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatefulWidget {
// // //   const MyApp({super.key});

// // //   @override
// // //   State<MyApp> createState() => _MyAppState();
// // // }

// // // class _MyAppState extends State<MyApp> {
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     Timer(
// // //       const Duration(seconds: 5),
// // //       () => Navigator.push(
// // //         context,
// // //         MaterialPageRoute(
// // //           builder: (context) => const LoginScreen(),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         appBar: AppBar(title: const Text('Homepage')),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: SplashScreen(),
// //       // Define your app's routes here.
// //     );
// //   }
// // }

// // class SplashScreen extends StatefulWidget {
// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     super.initState();

// //     // Perform initialization tasks here, such as loading data or resources.

// //     // Example: Delay for 2 seconds and then navigate to the main screen.
// //     Future.delayed(const Duration(seconds: 2), () {
// //       Navigator.pushReplacement(
// //         context,
// //         MaterialPageRoute(
// //           builder: (context) => MainScreen(),
// //         ),
// //       );
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Scaffold(
// //       body: Center(
// //         child: CircularProgressIndicator(), // or any other splash screen UI
// //       ),
// //     );
// //   }
// // }

// // class MainScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // Your main application screen.
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('My App'),
// //       ),
// //       body: const Center(
// //         child: Text('Welcome to the main screen!'),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
//       // Define your app's routes here.
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   late Timer _timer;

//   @override
//   void initState() {
//     super.initState();

//     // Create a timer with a delay of 2 seconds.
//     _timer = Timer(const Duration(seconds: 2), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MainScreen(),
//         ),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     // Don't forget to cancel the timer when the widget is disposed.
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(), // or any other splash screen UI
//       ),
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Your main application screen.
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My App'),
//       ),
//       body: const Center(
//         child: Text('Welcome to the main screen!'),
//       ),
//     );
//   }
// }
