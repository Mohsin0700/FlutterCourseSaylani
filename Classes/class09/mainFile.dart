// import 'dart:io';

void main() {
  // We have learnt functions in previous class
  // Now we will see how can we make arrow function like javascript

  // sum(num1, num2) => num1 + num2;

  // var result = sum(3, 3);
  // print(result);

  // Now we will learn null safety...
  // String name = stdin.readLineSync();
  // Above error is due to nullable string which means dart is not sure that name will defenitely get a String because it can also get null || Therefore it is called nullable String, nullable Int and so on.

  // There are two solution
  // First
  // String name = stdin.readLineSync()!;
  // Using exclamanation mark means it will defenitley get a string.

  // Second
  // String? name = stdin.readLineSync();
  // By using ? mark after Type It's means we have changed its type to nullable string, now it will store both String and null.

  // SIMILARY IN A FUNCTION

  // printNames({String? name, int? age}) {
  //   print(age);
  // }

  // printNames(age: 25);
  // Now we have used optional parameters

//   userInfo(name: 'Mohsin');
// }

// userInfo({required String name, String? FB}) {
//   String? ui = FB ?? 'No FB Account';
//   print(ui);

// Ternary Operators

  int age = 18;
  String res = age >= 18 ? 'Adult' : 'Under age';
  print(res);
}
