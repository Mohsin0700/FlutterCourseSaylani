import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLocalStorage extends StatefulWidget {
  const MyLocalStorage({super.key});

  @override
  State<MyLocalStorage> createState() => _MyLocalStorageState();
}

class _MyLocalStorageState extends State<MyLocalStorage> {
  bool isLoggedIn = false;

  void initState() {
    super.initState();
    getLoginDetails();
  }

  login() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn = true;
    await prefs.setBool('isLoggedIn', isLoggedIn);
    setState(() {});
  }

  logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn = false;
    // await prefs.setBool('isLoggedIn', isLoggedIn); || My method
    // await prefs.clear; || This will clear all local storage data
    await prefs.remove(
        'isLoggedIn'); // || This will clear specific data according to it's key;
    setState(() {});
  }

  getLoginDetails() async {
    await fetchLoginSate();
  }

  fetchLoginSate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs.getBool('isLoggedIn') ?? isLoggedIn;
    setState(() {});
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              isLoggedIn == false ? 'User Not Logged In' : 'User Logged In'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: login,
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: logout,
                child: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        ));
  }
}
