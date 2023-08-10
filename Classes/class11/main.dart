// Parameterized constructor
// class Student {
//   Student(name, age) {
//     print('Student name is $name');
//     print('Student age is $age');
//   }
// }

// Named Constructor
// class MarksSheet {
//   MarksSheet() {
//     print('Default Constructor');
//   }

//   MarksSheet.ComputerScience() {
//     print('This is computer science student');
//   }

//   MarksSheet.BioScience() {
//     print('This is bio-science student');
//   }
// }

// This keyword

class Human {
  String? name;
  int? age;

  Human({this.name = 'Hasan', this.age}) {}

  showInfo() {
    print('My name is $name');
    print('My age is $age');
  }
}

// The this keyword is used to point the current class object.
// It can be used to refer to the present class variables.
// We can instantiate or invoke the current class constructor using this keyword.
// We can pass this keyword as a parameter in the constructor call.
// We can pass this keyword as a parameter in the method call.
// It removes the ambiguity or naming conflict in the constructor or method of our instance/object.
// It can be used to return the current class instance.

// Static keyword

// class FirstClass {
//   static String boss = 'Mohsin';
//   FirstClass() {
//     print('This is the first class constructor');
//   }

//   firstMethod() {
//     print('This is the method of First_Class');
//   }
// }

// class SecondClass {
//   SecondClass() {
//     print('This is the constructor of second class');
//   }

//   secondMethod() {
//     print('This is the method of second class');
//     print('we can call static keyword of another is class here');
//     print(FirstClass.boss);
//   }
// }

void main() {
  Human Mohsin = Human(age: 26, name: 'Mohsin');

  Mohsin.showInfo();

  // final List names = ['Mohsin', 'Arbab'];
  // print(names);

  // names.add('Ali');
  // print(names);

  // const List names = ['Mohsin', 'Arbab'];
  // print(names);

  // names.add('Ali');  || Can't add or remove while declared with const keyword
  // print(names);
  // Student student1 = Student('Mohsin', 26);
  // var branch = MarksSheet.ComputerScience();

  // var obj = FirstClass();
  // var obj1 = SecondClass().secondMethod();
}
