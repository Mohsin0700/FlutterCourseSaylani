void main() {
  // Classes
  // OOPS stands for object oriented programming
  // To make a class we use "class keyword"
  // We can use any name for declearing a class but not dart built-in keywords
  // Convention is that first word of class name should always be capital
  // We don't declare a class into main function, we only call that class in main function
  // print(Human()
  // .name); // we are simply accessing class attribute / variable in main function
  // To call a method of a class
  // Human().eat();
  // We make object / instance from a class
  // var Human1 = Human();
  // print(Human1); // we can see the result Human1 is an instance of Human();

  // We can also specify it's type such as
  // Human Human1 = Human();
  // Since Human is already a type, therefore instead of defining types again we simply use main class name as it's type.

  Student Student1 = Student();

  Student1.project(false);
}

// #Class example
class Human {
  // This is a simple class with name Human
  String name = 'Mohsin';
  // above is simply a variable and in classes we call it attributes

  eat() {
    // This is a function within a class
    // In terms of classes we call it methods
    print('$name is eating');
  }
}

// #Class example #2

class Student {
  // We use "late" keyword in classes instead of "!";
  String name = 'Hafiz Mohsin';
  late int age;

  project(bool isProjectSubmitted) {
    String newName = name;
    if (isProjectSubmitted) {
      print('$newName has been sumitted project successfully');
    } else {
      print('$newName has failed to submit project, kick him out');
    }
  }
}
