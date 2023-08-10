// Using this keyword
// void main() {
//   // Creating object
//   var SPA866 = new Vehicle('SPA-866', 'TOYOTA', 'PRADO', 2016, 'DIGP');
//   SPA866.showDetails();
// }

// class Vehicle {
//   late String reg_no;
//   late String make;
//   late String type;
//   late int model;
//   late String unit;

//   Vehicle(regNo, make, type, model, unit) {
//     this.reg_no = regNo;
//     this.make = make;
//     this.model = model;
//     this.type = type;
//     this.unit = unit;
//   }

//   showDetails() {
//     print('Vehicle number is: $reg_no');
//     print('Vehicle make is: $make');
//     print('Vehicle type is: $type');
//     print('Vehicle model is: $model');
//     print('Vehicle unit is: $unit');
//   }
// }

//  Using this keyword

void main() {
  // Creating object
  var SPA866 = new Vehicle('SPA-866', 'TOYOTA', 2016, 'PRADO', 'DIGP');
  SPA866.showDetails();
}

class Vehicle {
  late String reg_no;
  late String make;
  late String type;
  late int model;
  late String unit;

  Vehicle(this.reg_no, this.make, this.model, this.type, this.unit) {}

  showDetails() {
    // print('Vehicle number is: $reg_no');
    // print('Vehicle make is: $make');
    // print('Vehicle type is: $type');
    // print('Vehicle model is: $model');
    // print('Vehicle unit is: $unit');
  }
}













// Points to remember
// The this keyword is used to point the current class object.
// It can be used to refer to the present class variables. || Done
// We can instantiate or invoke the current class constructor using this keyword.
// We can pass this keyword as a parameter in the constructor call. || Done
// We can pass this keyword as a parameter in the method call. || Done
// It removes the ambiguity or naming conflict in the constructor or method of our instance/object.
// It can be used to return the current class instance.