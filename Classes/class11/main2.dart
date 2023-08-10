// BASIC INHERITANCE

// void main() {
//   Human obj1 = Human();
//   obj1.speak();
// obj1.sing()\\ will throw error

//   Singer obj2 = Singer();
//   obj2.Sing();

//   NewSinger obj3 = NewSinger();
//   obj3.learning();
// }

// class Human {
//   String? gender;
//   String? relegion;

//   speak() {
//     print('I can speak');
//   }

//   listen() {
//     print('I can listen');
//   }

//   eat() {
//     print('I can eat');
//   }

//   walk() {
//     print('I can walk');
//   }
// }

// class Singer extends Human {
//   String name = 'Atif Aslam';
//   int age = 50;

//   Sing() {
//     print('$name can sing a song');
//   }
// }

// class NewSinger extends Singer {
//   String name = 'Shahid Khan';

//   learning() {
//     print(
//         '$name is a new singer and he wanna learn singing and his teacher is ${super.name} who,s age is $age');
//   }
// }

class Parent {
  Parent(name) {
    print('I am parent class constructor $name');
  }
}

class Child extends Parent {
  // Child() : super() {
  Child() : super('Mohsin') {
    print('This is child class constructor');
  }
}

void main() {
  var objj = Parent('Shabbir');
  var obj = Child();
}
