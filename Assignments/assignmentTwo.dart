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

  // List ages = [18, 22, 55, 45, 24];

  // int maxNum =
  // ages.reduce((value, element) => value > element ? value : element);
  // print(maxNum);

  // int minNum =
  //    ages.reduce((value, element) => value < element ? value : element);
  // print(minNum);

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
  // Map world = {
  //   'Pakistan': {'capital': 'Islamabad', 'currency': 'PKR', 'language': 'Urdu'},
  //   'Australia': {
  //     'capital': 'Cambridge',
  //     'currency': 'AD',
  //     'language': 'English'
  //   },
  //   'Bangladesh': {
  //     'capital': 'Dhaka',
  //     'currency': 'Taka',
  //     'language': 'Bangali'
  //   }
  // };

  // String CountryKey = 'Australia';
  // print(world[CountryKey]);
  // var countryInfo = world[CountryKey];

  // if (countryInfo != null) {
  //   var capitalCity = countryInfo['capital'];
  //   var currency = countryInfo['currency'];
  //   print('Country: ${CountryKey}');
  //   print('Capital: ${capitalCity}');
  //   print('Currency ${currency}');
  // }

  // Q.7:
  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };
  // Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

  // Solution:

  // if (expenses.containsKey('fri')) {
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

  // List<String> names = ['Mohsin', 'Kamran', 'Saim', 'Bilal', 'Taber', 'Mohsin'];
  // print(names);
  // print('New List');

  // List<String> newNames = names.toSet().toList();
  // print(newNames);

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters.The program should print a new list containing the first n elements from the original list.

  // Solutions:
}
