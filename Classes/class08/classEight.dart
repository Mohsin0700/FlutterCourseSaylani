// Just like other programming languages functions are also an important topic of dart
// We create basic Dart function just like javaScript
// Dart file contains one main Fucntion and under it's beneath any number of functions can be defined and call

void main() {
  // // basicFunction() {
  // //   print('This is a basic dart function');
  // // }

  // // // and here is how we call it...
  // // basicFunction();

  // // We can make function in anothe file and call it here for this, what we must do is only importing that file which contains function into main file then we will be able use that function.

  // // There are two types of functions in dart
  // // (01) null
  // // (02) return (String, num, bool);

  // // let us store basic function into a variable and see it's value...

  // var result = basicFunction();
  // print('Value of basic void function is $result');

  // // Now creating a function with it's type
  // int sum() {
  //   return 2 + 2;
  // }

  // result = sum();
  // print('The value of sum() is $sum()');

  // // We can't return instead to function of type int. and int to type String and vice versa.
  // // int sum2() {
  // //   return 'Mohsin';
  // // }

  // // RETURN KEYWORD
  // // We can use return keyword only for once in a function
  // // No any statement will work after the 'return' keyword
  // // void type of function can't contain return keyword

  // // Parameters and Arguments
  // // Let us see how to use parameters and arguments in Dart
  // // Parameters are used just like javascript
  // // but we can define it's types

  // int sum3(int n1, int n2) {
  //   return n1 + n2;
  // }

  // // var result2 = sum3(5, '3'); || Will throw an error
  // var result2 = sum3(3, 5); //  || Perfect
  // print(result2);

  // $$$$$$$$$$@@@@@@@@@@##########$$$$$$$$$$@@@@@@@@@@##########$#@$#@$#@$#@$#@$#$#@$#@$#$#$#@#$@$#@$@$#@$#@
  // NOW WE WILL SEE PARAMETER TYPES...

  // OPTIONAL PARAMETERS

  // mian2({a, b, c}) {
  //   print(a);
  //   print(b);
  //   print(c);
  //   print('If we use curly brackets then parameters bocome optional');
  // }

  // mian2();

  // main3({a, required b, c}) {
  //   print(
  //       'If we use required keyword then that parameter become required and other remains optional');
  //   print('We use required parameter through its name just like it $b');
  // }

  // main3(b: 'Mohsin');

  // ******************************PARAMETERS WITHOUT SEQUENCE*****************************************
  // One of the best tool / practic which differs dart from other programmin language is insequence parameter types which means if we don't know the sequence of parameter we can pass arguements using paramters name. Let's see an example below to understand it

  // printNames(Father, Son) {
  //   print('$Father is the father of $Son');
  // }

  // printNames('Hasnain', 'Jawad'); Hasnain is the father of Jawad || Correct Sentance
  // but if we don't know the sequence and wo would pass it like
  // printNames('Jawad', 'Hasnain'); then the statement will be Jawad is the father of Hasnain || Incorrect

  // Here now is the need of named parameters.

  printNames({required String Father, required String Son, int age = 2}) {
    print('$Father is the father of $Son');
  }

  printNames(Son: 'Jawad', Father: 'Hasnain');
  // Now it does'nt matter what the sequence is, Named parameter just made our life easier.
}














// ********************************************************************************************************************************************************************
// Functions with sequensed conditional parameters with named  & unsequense parameters with named

// void main() {
//   studentData(name: 'Mohsin', cnic: 4210159547846);
//   studentData(name: 'Mohsin', cnic: 4210159547846, bloodGroup: 'B-Positive');
//   studentData(
//       name: 'Kamran', cnic: 4210159547846, bloodGroup: 'B-Positive', ward: 'A');

//   // patientData('Aneela', 85, 'malir', 'karachi');
//   // but what would happen if we  pass arguments without sequense
//   // patientData(18, 'Aneela', 'hyderabad', 'peshawar');
//   // So now, we will use names arguements
//   // patientData(age: 18, name: 'Aneela', city: 'Karachi', area: 'Malir');
//   // now sequence is perfect
// }

// studentData({required name, required cnic, bloodGroup, ward = 'c'}) {
//   print('Student name is : $name');
//   print('Student cnic is : $cnic');
//   print('Student blood is (if given) : $bloodGroup');
//   print('Student ward is $ward');
// }

// // patientData({name, age, area, city}) {
// //   print('Mr/Mrs $name lives in $area, $city and he/she is $age years old');
// // }









// // ********************************************************************************************************************************************************************




// // ********************************************************************************************************************************************************************
// // void main() {

// //   print(secondFunc(10, 16));
// //   print(secondFunc(14, 16));
// //   print(secondFunc(11, 19));
// //   print(secondFunc(2, 11));
// // }
// // // This the way, how we create a typed function with simple required parameters
// // num secondFunc(int a, int b) {
// //   return a + b;
// // }
// // ********************************************************************************************************************************************************************






// // ********************************************************************************************************************************************************************
// // void main() {
// //   // We call function with in main function
// //   // var abc = secondFunction();
// //   // If we store a funtion of void type in a variable the it's value will be null
// //   // Whatever we return from a function will be stored in that variable
// //   // print('abc ki value is $abc');

// //   // print(secondFunction());
// //   secondFunction();
// // }

// // // How to make functions || We make functions out side of main functions
// // secondFunction() {
// //   // print('Second function is also working good');

// //   String studentName = 'Mohsin';

// //   num sub1 = 53;
// //   num sub2 = 73;
// //   num sub3 = 83;

// //   num obtMrks = sub1 + sub2 + sub3;

// //   num prcnt = (obtMrks / 300) * 100;

// //   if (prcnt > 60) {
// //     print('This line will be print either we print function or not');
// //     return '$studentName has been passed // This line will be print only when we print this function or we store it in a variable and print that variable';
// //   } else {
// //     return ('$studentName is failed');
// //   }
// // }
// // ********************************************************************************************************************************************************************