// import 'dart:io';

// void main() {
//   String newRegNo = stdin.readLineSync()!;
//   String oldRegNo = stdin.readLineSync()!;
//   String make = stdin.readLineSync()!;
//   String type = stdin.readLineSync()!;
//   int model = int.parse(stdin.readLineSync()!);

//   var vehicle1 = new Vehicle();
// }

// class Vehicle {
//   List<Map<String, dynamic>> allVehicles = [];

//   String? reg_id;
//   String? old_id;
//   int? model;
//   String? make;
//   String? type;

//   Vehicle({this.reg_id, this.old_id, this.make, this.model, this.type}) {
//     allVehicles.add({
//       'reg_id': reg_id,
//       'old_id': old_id,
//       'model': model,
//       'make': make,
//       'type': type
//     });
//   }

//   showAllVehicles() {
//     print(this.allVehicles);
//   }
// }

void main() {
  // Person obj = Person();
  // obj.info();
  Student obj2 = Student();
  obj2.info();
}

class Person {
  void info() {
    print('This is parent class');
  }
}

class Student extends Person {
  // @override
  void info() {
    print('This is student class');
    super.info();
  }
}
