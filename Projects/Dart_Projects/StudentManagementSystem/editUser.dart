import 'dart:io';
import 'userList.dart';
import 'mainFile.dart';

void editUser() {
  bool userFound = false;
  print('Enter Username');
  String username = stdin.readLineSync()!;

  allUsers.forEach((element) {
    if (element['name'] == username) {
      print(element);
      print('Edit username');
      element['name'] = stdin.readLineSync();
      print('Edit user course');
      element['course'] = stdin.readLineSync();
      print('Edit user role');
      element['role'] = stdin.readLineSync();
      userFound = true;

      print('User has been updated successfully');
      adminPanel();
    }
  });

  if (!userFound) {
    print('User not found');
    adminPanel();
  }
}
