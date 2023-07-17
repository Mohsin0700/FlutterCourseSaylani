import 'dart:io';

void main() {
  List<Map> allStudents = [
    {'name': 'admin', 'password': 'admin123', 'roll': 'admin'},
    {
      'name': 'Ahsan',
      'id': 01,
      'password': 'Ahsan123',
      'course': 'Flutter',
      'roll': 'student'
    },
    {
      'name': 'Mohsin',
      'id': 02,
      'password': 'Mohsin123',
      'course': 'Dart',
      'roll': 'student'
    },
    {
      'name': 'Kamran',
      'id': 03,
      'password': 'Kamran123',
      'course': 'JavaScript'
    },
  ];

  print('Welcome to Student Management System');
  print('Please Enter Your ID and Password to continue');

  var userName = stdin.readLineSync();
  var userPass = stdin.readLineSync();

  allStudents.forEach((element) {
    if (element['name'] == userName && element['password'] == userPass) {
      if (element['roll'] == 'admin') {
        print(allStudents);
      } else {
        print(element);
      }
    }
  });
}
