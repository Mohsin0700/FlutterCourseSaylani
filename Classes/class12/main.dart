// void main() {
//   // Creating Class Objects in Dart
//   // Here is the syntax
//   // var object_name  = new class_name(<constructor_arguments>);

//   // Let's create a new object
//   // var obj = new Student();
//   // To access an object's fields and methods
//   // print(obj.stdName);
//   // print(obj.showStdInfo());

//   // Now we will see how to create a constructor
// }

// // There are six main types of OOPs in dart, which we will discuss one by one.
// // First
// // ***************************************************************************
// //                                (01)  class
// // ***************************************************************************

// // defining a class

// class Student {
//   var stdName;
//   var stdAge;
//   var stdRoll_nu;

//   // Class Function
//   showStdInfo() {
//     print("Student Name is : ${stdName}");
//     print("Student Age is : ${stdAge}");
//     print("Student Roll Number is : ${stdRoll_nu}");
//   }
//   // In the above example of class, we declared a class called Student. This class has three fields stdName, stdAge, and stdRoll_nu. The showStdInfo() is a class function which prints the fields of class. To access the properties of the class, we need to create its object.
// }

// *************************************************************************************
//                                   (02) CONSTRUCTOR
// *************************************************************************************

// we have a class name Student, we will create an object of it.

// class Student {
//   Student(name, age, roll) {
//     print('Student name is $name');
//     print('Student age is $age');
//     print('Student roll is $roll');
//   }
// }

// void main() {
//   var std = new Student('Mohsin', 26, 'a1');
// }

// We must remember the following two rules while creating a constructor.

// The constructor name should be same as the class name.
// The constructor doesn't have explicit return type.
// *************************************************************************
// *************************************************************************

// **************************************************************************
//                      (03)TYPES OF CONSTRUCTORS
// **************************************************************************

//  There are three types of constructors.
// Default constructor or no-arg constructors
// Parameter constrctor
// Named constructor

// ************************
// (01) Default constructor
// ************************
// A Constructor which has no parameter is called default constructor or no-arg constructor. It is automatically created (with no argument) by Dart compiler if we don't declare in the class. The Dart compiler ignores the default constructor if we create a constructor with argument or no argument. The syntax is given below.

// class ClassName {
//   ClassName() {
//     // constructor body
//   }
// }

// Let's understand the following example.

// void main() {
//   // call constructor automatically when we creates an object

//   Student std = new Student();
// }

// class Student {
//   // Declaring a constructor
//   Student() {
//     print('The example of a default constructor');
//   }
// }

// |''''''''''''''''''''''''''''''|
// |(02) Parameterized constructor|
// |..............................|
// We can also pass the parameters to a constructor that type of constructor is called parameterized constructor. It is used to initialize instance variables. Sometimes, we need a constructor which accepts single or multiple parameters. The parameterized constructors are mainly used to initialize instance variable with own values. The syntax is given below.

// void main() {
//   // creating an object
//   Student std = new Student('Mohsin', 26);
// }

// class Student {
//   Student(String name, int age) {
//     print('Student name is $name');
//     print('Student age is $age');
//   }
// }

// |***********************|
// |(03) Named constructors|
// |***********************|

// The named constructors are used to declare the multiple constructors in single class. The syntax is given below.

// className.constructor_name(param_list)

// void main() {
//   // Creating objects
//   var std = new Student();
//   var std1 = new Student.specialization('Programming');
// }

// class Student {
//   // Declaring a constructor
//   Student() {
//     print('basic constructor');
//   }

//   // Second constructor
//   Student.specialization(String subject) {
//     print('Mohsin is going to specialize $subject');
//   }
// }
