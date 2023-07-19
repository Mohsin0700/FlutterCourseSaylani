import 'dart:io';
import 'userList.dart';
import 'addUser.dart';
import 'editUser.dart';
import 'deleteUser.dart';
import 'auth.dart';

var userName;
var userPass;
var currentUser;

void main() {
  mainFunc();
}

void mainFunc() {
  print(
      '@@@@@@@@@@**********Welcome to Student Management System**********@@@@@@@@@@');

  print('Please Enter Your Username');
  userName = stdin.readLineSync();

  print('Please Enter Your Password');
  userPass = stdin.readLineSync();

  login();
}

// Admin Screens
void adminPanel() {
  print(allUsers);
  print('Press any key to perform further action');
  print('Add User: Press 1');
  print('Delete User: Press 2');
  print('Edit User: Press 3');
  print('Exit: Press 4');

  var input = stdin.readLineSync();

  if (input == '1') {
    addUser();
  } else if (input == '2') {
    deleteUser();
  } else if (input == '3') {
    editUser();
  }
}

// User Screens
void userPanel() {
  print(currentUser);
  print('Press any key to perform further action');
  print('Change Password: Press 1');
  print('Change Name: Press 2');
  print('Exit: Press 3');

  var input = stdin.readLineSync();
  if (input == '3') {
    mainFunc();
  } else if (input == '2') {
    print('Enter New Name');
    var newName = stdin.readLineSync();
    currentUser['name'] = newName;
    print('Name has been updated successfully');
    login();
  } else if (input == '1') {
    print('Enter new password');
    var newPassword = stdin.readLineSync();
    currentUser['password'] = newPassword;
    print('Password has been updated successfully');
  }
}
