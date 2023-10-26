import 'package:flutter/material.dart';
// import 'package:second_project/more_complex_practice/user_model.dart';

class ChildUser extends StatelessWidget {
  const ChildUser({super.key, required this.user});

  // final UserModel user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User name is ${user.title}',
                style: const TextStyle(fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
