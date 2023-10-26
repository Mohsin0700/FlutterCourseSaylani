import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
// import 'package:mini_project/screens/homescreen/home_screen.dart';
import 'package:mini_project/screens/welcome_screen/widgets/custome_button.dart';
import 'package:mini_project/screens/welcome_screen/widgets/page_view.dart';
import 'package:mini_project/widgets/bottom_nav.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 20),
          color: MyAppColors.baseColor,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 35),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: const MyPageView(),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  'assets/images/a.png',
                ),
              ),
              const Spacer(),
              MyCustomBUtton(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNav(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
