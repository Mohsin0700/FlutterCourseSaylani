void main() {
  //  Q.1: Create a list of names and print all names using list.
// Solution

  // List names = ['Bilal', 'Saim', 'Kamran', 'Mohsin'];
  // print(names);

  // Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days
  // Solution

  // List<String> days = [];
  // print(days);
  // days.add('Monday');
  // days.add('Tuesday');
  // days.add('Wednesday');
  // days.add('Thursday');
  // days.add('Friday');
  // days.add('Saturday');
  // days.add('Sunday');
  // and the shortest way is
  // days.addAll([
  //   'Monday',
  //   'Tuesday',
  //   'Wednesday',
  //   'Thursday',
  //   'Friday',
  //   'Saturday',
  //   'Sunday'
  // ]);
  // print(days);

// Q.3: Create a list of Days and remove one by one from the end of list.
// Solution
  // print('Question 3');
  // List days = [
  //   'Monday',
  //   'Tuesday',
  //   'Wednesday',
  //   'Thursday',
  //   'Friday',
  //   'Saturday',
  //   'Sunday'
  // ];
  // print(days);
  // days.removeLast();
  // print(days);
  // days.removeLast();
  // print(days);
  // days.removeLast();
  // print(days);
  // days.removeLast();
  // print(days);
  // days.removeLast();
  // print(days);
  // days.removeLast();
  // print(days);
  // days.removeLast();
  // print(days);

  // Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  // Solution:

  // @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  // List<int> nums = [14, 98, 65, 56, 87, 26, 10, 9, 2, 3, 5, 7, 9, 14, 68, 99];

  // ***************************************************************************************************
  // First Solution using for loop
  // int greatestVal = nums[0];
  // int lowestVal = nums[0];

  // for (var i = 0; i < nums.length; i++) {
  //   if (nums[i] > greatestVal) {
  //     greatestVal = nums[i];
  //   }
  // }

  // print('Greates Value is => $greatestVal');

  // for (var i = 0; i < nums.length; i++) {
  //   if (nums[i] < lowestVal) {
  //     lowestVal = nums[i];
  //   }
  // }
  // print('Lowest Value is => $lowestVal');

//******************************************************************************************************** */
  // Second Solution using sort() method

  // nums.sort();

  // print(
  //     'Greatest value is => ${nums.last} and lowest value is => ${nums.first}');

//******************************************************************************************************* */
// Third Solution using for each

  // int greatestNum = nums[0];
  // int lowestNum = nums[0];

  // nums.forEach((element) {
  //   if (element > greatestNum) {
  //     greatestNum = element;
  //   }
  // });

  // nums.forEach((element) {
  //   if (element < lowestNum) {
  //     lowestNum = element;
  //   }
  // });

  // print('Greates Value is => $greatestNum');
  // print('Lowest Value is => $lowestNum');

  // ***************************************************************************************************************************
  // Using reduce method

  // int greatestVal =
  //     nums.reduce((value, element) => value > element ? value : element);

  // print(greatestVal);

  // int lowestVal =
  //     nums.reduce((value, element) => value < element ? value : element);

  // print(lowestVal);

  // Q.5: Create a map with name, phone keys and store some values to it.Use where to find all keys that have length 4.

  // Map<String, dynamic> myInfo = {
  // 'name': 'Mohsin',
  // 'age': 26,
  // 'qualification': 'Graduation',
  // 'phone': '0900',
  // 'city': 'Karachi'
  // };

  // To find key of length four
  // List keysWithLengthFour =
  // myInfo.keys.where((key) => key.length == 4).toList();
  // print(keysWithLengthFour);

// Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity,currency and language to it.by using any country key print all the value of Capital & Currency.

  // Solution:
  //  Map<String, dynamic> World = {
  //   'Pakistan': {'capital': 'Islamabad', 'currency': 'PKR', 'language': 'Urdu'},
  //   'India': {'capital': 'Mumbai', 'currency': 'INR', 'language': 'Hindi'},
  //   'Bangladesh': {
  //     'capital': 'Dhaka',
  //     'currency': 'Taka',
  //     'language': 'Bangali'
  //   }
  // };
  // // Change the name of the country and see result
  // String country = 'Bangladesh';

  // print(
  //     "Given country is $country, capital of $country is ${World[country]['capital']} and it's currency is ${World[country]['currency']}");

  // Q.7:
  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };
  // Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

  // Solution:

  // bool fri = expenses.containsKey('fri');
  // print(fri);
  // if (expenses.keys.contains('fri')) {
  //   expenses['fri'] = 5000.0;
  // } else {
  //   expenses['fri'] = 5000.0;
  // }
  // print(expenses);

  /*
Q.8: remove all false values from below list by using removeWhere or retainWhere property.

  List<Map> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

// Solution

  usersEligibility.removeWhere((e) => e['eligible'] == false);

  print(usersEligibility);
*/

// Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

// Solution
  // List<int> numbers = [10, 5, 8, 2, 20, 134, 15, 3];

  // int maxNums =
  //     numbers.reduce((value, element) => value > element ? value : element);

  // print(maxNums);

// Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

// Solution:

  // SOLUTION:

  // List<String> names = ['Mohsin', 'Hassan', 'Mohsin', 'Arbab', 'Safi'];
  // List<String> newNames = names.toSet().toList();

  // print(newNames);

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters.The program should print a new list containing the first n elements from the original list.

  // Solutions:
  //SKIPPED

  // Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

  // Solution:

  // List<String> names = ['Mohsin', 'Bilal', 'Taber'];
  // print('Orgional List => $names');
  // List<String> newList = List.of(names.reversed);
  // print('New reversed list => $newList');

  // Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.
  // Solutoin

  //  Skipped

  // Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.

  // SOLUTION:

  // List<int> nums = [5, 4, 5, 8, 12, 65];

  // List newList = List.from(nums);

  // newList.sort();

  // print('Orginal List is $nums');
  // print('New sorted list is $newList');

  // Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers.The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  // List<int> intList = [5, -2, -1, -10, 12, 14, -15, 20];

  // List<int> newList = intList.where((element) => element > 0).toList();
  // print(newList);

  // Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers.The program should take in the original list as a parameter and print a new list containing only the even numbers.

  // List<int> nums = [
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
  //   20
  // ];
  // List<int> newNums = nums.where((element) => element % 2 == 0).toList();

  // print(newNums);

  // Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.

  // SOLUTION:

  // List<int> nums = [5, 10, 12, 2, 3, 19, 3];
  // List<int> newNums = nums.map((e) => e * e).toList();
  // print(newNums);

  // Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

  // SOLUTION:

  // Map<String, dynamic> person = {
  //   'name': 'John',
  //   'age': 25,
  //   'isStudent': true,
  // };

  // int age = person['age'];
  // bool isStudent = person['isStudent'];

  // if (age >= 18 && isStudent == true) {
  //   print('You are eligible');
  // } else {
  //   print('You are not eligible');
  // }

  // Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to heck if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock"

  // Map<String, dynamic> product = {'name': 'Milk Pack', 'price': 425, 'qty': 5};

  // if (product['qty'] > 0) {
  //   print('Product In-Stock');
  // } else {
  //   print('Out of stock');
  // }

  // Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  // Map<String, dynamic> car = {
  //   'brand': 'Toyota',
  //   'color': 'red',
  //   'isSedan': true
  // };

  // if (car['color'] == 'red' && car['isSedan'] == true) {
  //   print('Match');
  // } else {
  //   print('No Match');
  // }

  // Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".

  // Map<String, dynamic> user = {
  //   'name': 'Mohsin',
  //   'isAdmin': false,
  //   'isActive': true
  // };

  // if (user['isAdmin'] == true && user['isActive'] == true) {
  //   print('User is an admin and active');
  // } else if (user['isAdmin'] == true && user['isActive'] == false) {
  //   print('User is an admin but in-avtive');
  // } else if (user['isAdmin'] == false && user['isActive'] == true) {
  //   print('User is not an admin but active');
  // } else {
  //   print('User is neither an admint nor active');
  // }

  // Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

//   Map<String, dynamic> cart = {'Shirts': 5, 'Pents': 4, 'Shoes': 1};

//   bool res = cart.keys.contains('Shirts');
//   if (res == true) {
//     print('Product Found');
//   } else {
//     print('Product not found');
//   }
}
