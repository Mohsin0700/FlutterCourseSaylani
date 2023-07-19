import 'dart:io';

var userName;
var userPass;
var currentUser;

// Sample List
List<Map<String, dynamic>> allUsers = [
  {'name': 'Hasan', 'password': 'admin123', 'roll': 'admin'},
  {
    'name': 'Ahsan',
    'password': 'Ahsan123',
    'course': 'Flutter',
    'roll': 'student'
  },
  {
    'name': 'Mohsin',
    'password': 'Mohsin123',
    'course': 'Dart',
    'roll': 'student'
  },
  {
    'name': 'Kamran',
    'password': 'Kamran123',
    'course': 'JavaScript',
    'roll': 'student'
  },
];

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

// Authentication Function
void login() {
  allUsers.forEach((element) {
    if (element['name'] == userName && element['password'] == userPass) {
      currentUser = element;
    }
  });

  if (currentUser != null) {
    if (currentUser['roll'] == 'admin') {
      adminPanel();
    } else if (currentUser['roll'] == 'student') {
      userPanel();
    }
  } else {
    print('Incorrect username or password');
  }
}

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
