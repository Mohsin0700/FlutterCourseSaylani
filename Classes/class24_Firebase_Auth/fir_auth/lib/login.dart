import 'package:fir_auth/home.dart';
import 'package:fir_auth/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isLoggingIn = false;

  login() async {
    try {
      isLoggingIn = true;
      setState(() {});
      // ignore: unused_local_variable
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    } on FirebaseAuthException catch (e) {
      isLoggingIn = false;
      setState(() {});
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Column(children: [
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(hintText: 'Enter Email'),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(hintText: 'Enter Password'),
        ),
        ElevatedButton(onPressed: () => login(), child: const Text('Login')),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Register()));
          },
          child: const Text('dont have an account? SignUp'),
        ),
        Visibility(
            visible: isLoggingIn, child: const CircularProgressIndicator()),
      ]),
    );
  }
}
