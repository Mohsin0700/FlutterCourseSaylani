import 'dart:io';
import 'userList.dart';
import 'mainFile.dart';

void addUser() {
  print('Enter user name');
  String newUserName = stdin.readLineSync()!;
  print('Enter user password');
  String newUserPass = stdin.readLineSync()!;
  print('Enter user course');
  String userCourse = stdin.readLineSync()!;
  print('Enter user role');
  String userRole = stdin.readLineSync()!;

  Map<String, dynamic> newUser = {
    'name': newUserName,
    'password': newUserPass,
    'course': userCourse,
    'role': userRole
  };

  allUsers.add(newUser);
  print('User has been added successfully');
  adminPanel();
}
