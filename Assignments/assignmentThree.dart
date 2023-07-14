import 'dart:io';

void main() {
//   Write a program that takes a list of numbers as input and prints the
// 1.
// even numbers in the list using a for loop.
// Example:
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output: 2 4 6 8 10

  // List<int> input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // List<int> evenNumbers = [];
  // for (var i = 0; i < input.length; i++) {
  //   if (input[i]  % 2 == 0) {
  //     evenNumbers.add(input[i]);
  //   }
  // }

  // print(evenNumbers);

//   2.
// Write a program that prints the Fibonacci sequence up to a given
// number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8

  // List<int> sequence = [];
  // int number = 10;
  // int a = 0, b = 1;

  // for (int i = 0; i < number; i++) {
  //   sequence.add(a);
  //   int temp = a; //tmp = 0
  //   a = b; // a = 1

  //   b = temp + b; // 0 + 1; b = 1
  // }
  // print(sequence);

//   3.
// Implement a code that checks whether a given number is prime or not.
// Example:
// Input: 17
// Output: 17 is a prime number

  // int number = 17;
  // bool isPrime = true;

  // if (number == 1) {
  //   isPrime = false;
  // } else {
  //   for (int i = 2; i <= number / 2; i++) {
  //     if (number % i == 0) {
  //       isPrime = false;
  //       break;
  //     }
  //   }
  // }

  // if (isPrime) {
  //   print('$number is a prime number.');
  // } else {
  //   print('$number is not a prime number.');
  // }

//   4.
// Implement a code that finds the factorial of a number using a while
// loop or for loop.
// Example:
// Input: 5
// Output: Factorial of 5 is 120

  // int number = 5;
  // int factorial = 1;

  // for (var i = 1; i <= number; i++) {
  //   print('i $i');
  //   factorial *= i;
  //   print('factorial $factorial');
  // }

  // print("Factorial of $number is $factorial");

//   5.
// Write a program that calculates the sum of all the digits in a given
// number using a while loop.
// Example:
// Input: 12345

  // List<int> numbers = [1, 2, 3, 4, 5];
  // int result = 0;
  // int i = 0;
  // while (i < numbers.length) {
  //   result += numbers[i];
  //   i++;
  // }
  // print('Result is $result');

//   6.
// Implement a code that finds the largest element in a list using a for
// loop.
// Example:
// Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output: Largest element: 9

  // List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  // int largestNumber = 0;
  // for (var i = 0; i < numbers.length; i++) {
  //   if (largestNumber < numbers[i]) {
  //     largestNumber = numbers[i];
  //   }
  // }
  // print('Largest Number is $largestNumber');

//   7.
// Write a program that prints the multiplication table of a given number
// using a for loop.
  // int userInput = 5;

  // for (int i = 1; i <= 10; i++) {
  //   print('$userInput * $i = ${userInput * i}');
  // }

//   Implement a function that checks if a given string is a palindrome.
// Example:
// Input: "radar"
// Output: "radar" is a palindrome.

  // String userInput = 'radar';
  // String reverInput =
  //     new String.fromCharCodes(userInput.runes.toList().reversed);
  // if (userInput == reverInput) {
  //   return print('Word $userInput is palindrome');
  // }
  // return print('Word $userInput is not an palindrome');

//   10.
// Test Data :
// Input number of terms : 5
// Expected Output :
// Number is : 1 and cube of the 1 is :1
// Number is : 2 and cube of the 2 is :8
// Number is : 3 and cube of the 3 is :27
// Number is : 4 and cube of the 4 is :64
// Number is : 5 and cube of the 5 is :125

  // int number = 5;
  // for (var i = 1; i <= number; i++) {
  //   print('Number is : $i and cube of the $i is : ${i * i * i}');
  // }

//   Write a program to display a pattern like a right angle triangle using an
// 11.
// asterisk using loop.
// The pattern like :
// *
// **
// ***
// ****
  // int count = 4;
  // for (var i = 1; i <= count; i++) {
  //   for (var j = 0; j < i; j++) {
  //     stdout.write("*");
  //   }
  //   print("");
  // }

//   Write a program to display a pattern like a right angle triangle with a
// 12.
// number using loop.
// The pattern like :
// 1
// 12
// 123
// 1234

  // int count = 4;
  // for (var i = 1; i <= count; i++) {
  //   for (var j = 1; j <= i; j++) {
  //     stdout.write(j);
  //   }
  //   print("");
  // }

// 13. Write a program to make such a pattern like a right angle triangle with
// a number which will repeat a number in a row.
// The pattern like :
// 1
// 22
// 333
// 4444

  // int count = 4;
  // for (var i = 1; i <= count; i++) {
  //   for (var j = 1; j <= i; j++) {
  //     stdout.write(i);
  //   }
  //   print("");
  // }

// 14.  Write a program to make such a pattern like a right angle triangle with
// the number increased by 1 using loop..
// The pattern like :
// 1
// 2 3
// 4 5 6
// 7 8 9 10

  // int number = 1;
  // int row = 4;
  // for (var i = 1; i <= row; i++) {
  //   for (var j = 1; j <= i; j++) {
  //     stdout.write(number);
  //     number++;
  //   }
  //   print("");
  // }

// 15.  Write a program to make a pyramid pattern with numbers increased by 1.
//     1
//    2 3
//   4 5 6
//  7 8 9 10

  // int number = 1;
  // int rows = 4;
  // for (int i = 0; i < rows; i++) {
  //   for (int j = (rows - i); j > 1; j--) {
  //     stdout.write(
  //         ' '); // 1 irritation 4 3 2   / 2 irritation 3 2  / 3 irritation 2 / last irritation nothing
  //   }
  //   for (int j = 0; j <= i; j++) {
  //     stdout.write(number);
  //     number++;
  //   }
  //   stdout.writeln();
  // }

  // 16. Write a program to make such a pattern as a pyramid with an asterisk
//   *
// * * *
// * * * *
// * *

  // var num = [1, 3, 4, 2];

  // for (var i = 0; i < num.length; i++) {
  //   for (var j = 0; j < num[i]; j++) {
  //     stdout.write('*');
  //   }
  //   print("");
  // }

//   17. Write a program that asks the user for their email and password. If the
// email and password match a predefined set of credentials, print "User
// login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.

  // String email = 'ikamihere@gmail.com';
  // dynamic password = '1234@kamran';

  // if (email == 'ikamihere@gmail.com' && password == '1234@kamran') {
  //   return print('User login successful');
  // }

  // return print('Email Password is inCorrect');

//   18 . Write a program that asks the user for their email and password. You
// are given a list of predefined user credentials (email and password
// combinations). If the entered email and password match any of the
// credentials in the list, print "User login successful." Otherwise, keep
// asking for the email and password until the correct credentials are
// provided.

  // List<Map<String, dynamic>> userDetails = [
  //   {'email': 'ikamihere@gmail.com', 'password': 'admin2211'},
  //   {'email': 'raza@gmail.com', 'password': 'admin2211'},
  //   {'email': 'ali@gmail.com', 'password': 'admin2211'}
  // ];

  // String email = 'ikamihere@gmail.com';
  // String password = 'admin2211';

  // for (var i = 0; i < userDetails.length; i++) {
  //   if (userDetails[i]['email'] == email &&
  //       userDetails[i]['password'] == password) {
  //     print('User Login Successfully');
  //     break;
  //   }
  //   return print('No records found');
  // }

//   19. Write a program that takes a list of numbers as input and prints the
// numbers greater than 5 using a for loop and if-else condition.

  // List<int> numbers = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  //   6,
  //   7,
  //   8,
  //   9,
  //   10,
  //   11,
  //   12,
  //   13,
  //   14,
  //   15,
  //   16,
  //   17,
  //   18,
  //   19,
  //   3,
  //   20
  // ];

  // for (var i = 0; i < numbers.length; i++) {
  //   if (numbers[i] >= 5) {
  //     print(numbers[i]);
  //   }
  // }

//   20. Write a program that counts the number of vowels in a given string
// using a for loop and if-else condition.

  // String name = 'Kamran';
  // List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  // num vowelsCount = 0;

  // for (int i = 0; i < name.length; i++) {
  //   for (int j = 0; j < vowels.length; j++) {
  //     if (name[i] == vowels[j]) {
  //       // print('found ${name[i]} match with ${vowels[j]}');
  //       vowelsCount += 1;
  //     }
  //   }
  // }

  // print('vowelsCount $vowelsCount');

//   21. Implement a code that finds the maximum and minimum elements in a
// list using a for loop and if-else condition.

  // List<String> elements = [
  //   'AliRazaKamranSaeed',
  //   'Kamran',
  //   'Ali',
  //   'AliRazaKamran',
  //   'Rohan',
  //   't',
  //   'Siddiquikamran',
  //   'ro'
  // ];
  // String maxEl = elements.first;
  // String minEl = elements.first;
  // for (var i = 0; i < elements.length; i++) {
  //   if (elements[i].length > maxEl.length) {
  //     maxEl = elements[i];
  //   } else if (elements[i].length < minEl.length) {
  //     minEl = elements[i];
  //   }
  // }

  // print(maxEl);
  // print(minEl);

// 22. Write a program that calculates the sum of the squares of all odd
// numbers in a given list using a for loop and if-else condition.
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   int sumofOddSquare = 0;

//   for (int i = 0; i < numbers.length; i++) {
//     if (numbers[i] % 2 != 0) {
//       sumofOddSquare += numbers[i] * numbers[i];
//     }
//   }

//   print("The sum of the squares of odd numbers is: $sumofOddSquare");

// 23. Write a program that takes a list of student details as input, where
// each student is represented by a map containing their name, marks,
// section, and roll number. The program should determine the grade of
// each student based on their average score (assuming maximum marks
// for each subject is 100) and print the student's name along with their
// grade.
// List<Map<String, dynamic>> studentDetails = [
// {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
// {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
// {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
// ];

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  for (var i = 0; i < studentDetails.length; i++) {
    // dynamic res =
    //     studentDetails[i]['marks'].reduce((val, element) => val += element);

    // print('res $res');
    print(studentDetails[i]['marks']);
  }
}
