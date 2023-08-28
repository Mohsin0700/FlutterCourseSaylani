import 'dart:io';
import 'userList.dart';
import 'mainFile.dart';

void deleteUser() {
  bool userFound = false;
  print('Enter username');
  String username = stdin.readLineSync()!;

  for (var i = 0; i < allUsers.length; i++) {
    if (allUsers[i]['name'] == username) {
      allUsers.removeWhere((element) => element['name'] == username);
      print('User deleted successfully');
      adminPanel();
      userFound = true;
    }
  }
  if (!userFound) {
    print('User not found');
  }
}
