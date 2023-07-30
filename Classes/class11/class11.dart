void main() {
  // We will learn OOP in this class
  // OOP stands for Object Oriented Programming
  // Here is how to make instance of a class
  // and how to give type

  Human newInstance = Human('Munawar', 44, 'angry');

  // In above line First Human is the type.
  // newinstance is the name which can by anything
  // after '=' sign Human(); is original class which we had made below

  // Printing attributes/variables of instance

  print(newInstance.name);
  print(newInstance.age);

  // Calling function
  // newInstance.laughing();

  // Mistakes
  print(Human('Arbab', 23, 'laughing').name);
  print(Human('Arbab', 23, 'laughing').age);

  newInstance.action;
}

// Here is how can we make a class
class Human {
  String name = 'Mohsin';
  int age = 26;
  String action;

  Human(this.name, this.age, this.action);

  laughing() {
    print('hehehe');
  }

  angry() {
    print('WTF');
  }

  crying() {
    print('Aaaaaaan aaaaaan aaaaan');
  }

  currentAction() {
    if (action == 'laughing') {
      laughing();
    } else if (action == 'angry') {}
  }
}
