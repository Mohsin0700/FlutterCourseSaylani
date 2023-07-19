// import 'dart:io';

void main() {
  // How to take input from user in dart
  // int age = int.parse(stdin.readLineSync()!);
  // print('User age is $age');

  // While & do While loop

  List<Map<String, dynamic>> users = [
    {'name': 'Mohsin', 'password': 'm2'},
    {'name': 'Bilal', 'password': 'b2'},
    {'name': 'Kamran', 'password': 'k2'},
  ];

  bool isLoggedIn = false;
  String username = 'Bilal';
  String userPass = 'b2';

  while (isLoggedIn == false) {
    for (var i in users) {
      if (i['name'] == username && i['password'] == userPass) {
        print("${i['name']} loggedIn successfuly");
        isLoggedIn = true;
      } else {
        print('Login failed');
      }
    }
  }
}
