import 'package:fir_auth/home.dart';
import 'package:fir_auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  register() async {
    try {
      // ignore: unused_local_variable
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: 'bbb@gmail.com',
        password: '123456',
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
      }
    } catch (e) {
      // print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Screen'),
      ),
      body: Column(children: [
        const TextField(
          decoration: InputDecoration(hintText: 'Enter Email'),
        ),
        const TextField(
          decoration: InputDecoration(hintText: 'Enter Password'),
        ),
        ElevatedButton(
            onPressed: () {
              register();
            },
            child: const Text('Register')),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            child: const Text('Already have an account? SignIn'))
      ]),
    );
  }
}
