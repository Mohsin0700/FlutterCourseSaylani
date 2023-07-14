// ********************************************************************************************************************************************************************
// Functions with sequensed conditional parameters with named  & unsequense parameters with named

void main() {
  // studentData(name: 'Mohsin', cnic: 4210159547846);
  // studentData(name: 'Mohsin', cnic: 4210159547846, bloodGroup: 'B-Positive');

  // patientData('Aneela', 85, 'malir', 'karachi');
  // but what would happen if we  pass arguments without sequense
  // patientData(18, 'Aneela', 'hyderabad', 'peshawar');
  // So now, we will use names arguements
  patientData(age: 18, name: 'Aneela', city: 'Karachi', area: 'Malir');
  // now sequence is perfect
}

studentData({required name, required cnic, bloodGroup}) {
  print('Student name is : $name');
  print('Student cnic is : $cnic');
  print('Student blood is (if given) : $bloodGroup');
}

patientData({name, age, area, city}) {
  print('Mr/Mrs $name lives in $area, $city and he/she is $age years old');
}









// ********************************************************************************************************************************************************************




// ********************************************************************************************************************************************************************
// void main() {

//   print(secondFunc(10, 16));
//   print(secondFunc(14, 16));
//   print(secondFunc(11, 19));
//   print(secondFunc(2, 11));
// }
// // This the way, how we create a typed function with simple required parameters
// num secondFunc(int a, int b) {
//   return a + b;
// }
// ********************************************************************************************************************************************************************






// ********************************************************************************************************************************************************************
// void main() {
//   // We call function with in main function
//   // var abc = secondFunction();
//   // If we store a funtion of void type in a variable the it's value will be null
//   // Whatever we return from a function will be stored in that variable
//   // print('abc ki value is $abc');

//   // print(secondFunction());
//   secondFunction();
// }

// // How to make functions || We make functions out side of main functions
// secondFunction() {
//   // print('Second function is also working good');

//   String studentName = 'Mohsin';

//   num sub1 = 53;
//   num sub2 = 73;
//   num sub3 = 83;

//   num obtMrks = sub1 + sub2 + sub3;

//   num prcnt = (obtMrks / 300) * 100;

//   if (prcnt > 60) {
//     print('This line will be print either we print function or not');
//     return '$studentName has been passed // This line will be print only when we print this function or we store it in a variable and print that variable';
//   } else {
//     return ('$studentName is failed');
//   }
// }
// ********************************************************************************************************************************************************************