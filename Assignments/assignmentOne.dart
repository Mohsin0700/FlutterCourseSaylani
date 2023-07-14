import 'dart:math';

void main() {
// Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
// ie: if both values are equal then it's square otherwise rectangle.

// Solution:
  int len = 5;
  int brd = 8;

  if (len == brd) {
    print('It is a square');
  } else {
    print('It is a rectangle');
  }

// Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.

// Solution:
  int saim = 20;
  int kamran = 22;

  if (saim > kamran) {
    print('Saim is Elder and Kamran is Younger');
  } else {
    print('Kamran is Elder and Saim is Younger');
  }

// Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?

// Solution:
  num totalNumberOfClasses = 16;

  num numberOfClassesAttended = 10;

  num attendancePercentage =
      (numberOfClassesAttended * 100) / totalNumberOfClasses;

  print('Student Percentage is ${attendancePercentage}%');

  if (attendancePercentage >= 75) {
    print('He is allowed to sit in exam');
  } else {
    print('Not allowed');
  }

// Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
// If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
// i.e: Use % ( modulus ) operator.

// Solution:
  int year = 2023;

  if (year % 4 == 0) {
    print('This is a leap year');
  } else {
    print("This is not a leap year");
  }

// Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot

// Solution
  num temp = 42;

  if (temp < 0) {
    print('Freezing Weather');
  } else if (temp > 0 && temp < 10) {
    print('Its very cold weather');
  } else if (temp > 10 && temp < 20) {
    print('Its cold weather');
  } else if (temp > 20 && temp < 30) {
    print('Its normal weather');
  } else if (temp > 30 && temp < 40) {
    print('Its hot weather');
  } else {
    print('Sooraj Sawa Nezey per hai bhai');
  }

  // Q.6: Write a program to check whether an alphabet is a vowel or consonant

  // Solution:
  String alphabet = 'k';

  if (alphabet == 'a' ||
      alphabet == 'e' ||
      alphabet == 'i' ||
      alphabet == 'o' ||
      alphabet == 'u') {
    print('This is a vowel');
  } else {
    print('This is a consonant');
  }

// Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above                      @2.00

// Test Data :
// id: 1001
// name: James
// units: 800

// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

// Solution:
  var id = 1001;
  String name = 'James';
  int totalUnits = 550;
  num unitRate = 0;

  if (totalUnits > 0 && totalUnits < 200) {
    unitRate = 1.2;
  } else if (totalUnits > 200 && totalUnits < 400) {
    unitRate = 1.5;
  } else if (totalUnits > 400 && totalUnits < 600) {
    unitRate = 1.8;
  } else {
    unitRate = 2;
  }
  num netBillAmount = totalUnits * unitRate;

  print('User_Name : ${name}');
  print('User_ID : ${id}');
  print('Units_Consumed : 800');
  print('Amount charges @: ${unitRate} per unit');
  print('Net Bill Amount : ${netBillAmount}');

// Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.
// Solution:

  int english = 90;
  int math = 95;
  int physics = 85;
  int chemistry = 50;
  int sindhi = 75;
  int totalMarks = 500;
  int obtaiedMarks = english + math + physics + sindhi + chemistry;

  double percentage = (obtaiedMarks * 100) / totalMarks;

  String studentName = 'Muhammad Mohsin Hussain';
  int rollNumber = 7508;
  String classLevel = 'Pre Engineering Part-ll';

  print('Name : $studentName');
  print('Roll Number : $rollNumber');
  print('Class $classLevel');
  print('Total Percentage : $percentage%');
  if (percentage >= 90) {
    print("Grade: A+");
  } else if (percentage >= 80) {
    print("Grade:A");
  } else if (percentage >= 70) {
    print("Grade: B");
  } else if (percentage >= 60) {
    print("Grade: C");
  } else if (percentage >= 50) {
    print("Grade: D");
  }

// Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

// Solution:
  num val = 24;
  if (val % 2 == 0) {
    if (val % 5 == 0) {
      print('Number is Even and divisible by 5');
    } else {
      print('Number is Even but not divisible by 5');
    }
  } else if (val % 2 != 0) {
    if (val % 7 == 0) {
      print('Number is odd and divisible by 7');
      print("Working");
    } else {
      print('Number is odd but not divisible by 7');
    }
  }

// Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.
// Solution:

  int num1 = 5;
  int num2 = 11;
  int num3 = 7;

  int greatestNum = 0;
  int lowestNum = 0;

  if (num1 > num2 && num1 > num3) {
    greatestNum = num1;
  } else if (num2 > num1 && num2 > num3) {
    greatestNum = num2;
  } else if (num3 > num1 && num3 > num2) {
    greatestNum = num3;
  }

  if (num1 < num2 && num1 < num3) {
    lowestNum = num1;
  } else if (num2 < num1 && num2 < num3) {
    lowestNum = num2;
  } else if (num3 < num1 && num3 < num2) {
    lowestNum = num3;
  }

  print('Greates number is ${greatestNum} and lowest number is ${lowestNum}');
// Q11: Write a program to calculate root of any number.
// i.e: √y = y½
// Solution:

  num num10 = 216;

  num sqRoot = sqrt(num10);

  print(sqRoot);
// Q12: Write a program to convert Celsius  to Fahrenheit   .
// i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32
// Solution:

  double celsius = 40;
  double fahrenheit = (celsius * 9 / 5) + 32;

  print(
      "$celsius°C degrees Celsius is equal to $fahrenheit°F degrees Fahrenheit.");
}
