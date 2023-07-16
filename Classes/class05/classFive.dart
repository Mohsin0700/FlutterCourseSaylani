void main() {
  // In this class we are learning Maps, which are very similar to objects in javascript for those who have learnt javascript before.

  // Map person = {'name': 'Mohsin', 'age': 26};
  // print('This is a simple map with two keys and values $person');

  // Like list Map also have it's own methods some of them are mentioned below

  // (01) MapName.keys|| This method returns all the keys inside map

  // print(person.keys);

  // (02) MapName.value || This method gives all the values of all keys inside that map.

  // print(person.values);

  // Note
  // There could be no any similar key in an object

  // (03) MapName['keyName'] || By using this method we can get value of any specific key in the map

  // print(person['age']);

  // Just like array of objects in javascript we can make a List of maps, let's see how it works

  // List students = [
  //   {'name': 'Mohsin', 'age': 26},
  //   {'name': 'Arbab', 'age': 23},
  //   {'name': 'Kamran', 'age': 24},
  //   {'name': 'Munawar', 'age': 44}
  // ];

  // And we can access any map of a list through it's index number

  // print(students[0]);
  // print(students[1]);
  // print(students[2]);
  // print(students[3]);

  // Above method is very lenghty, so we can use forEach method here.

  // students.forEach((element) {
  //   print(element['name']);
  // });

  // While creating a Map we can define it's key and value types.

  // Map<String, dynamic> student = {'name': 'Mohsin', 'age': 26};
  // // Similirly as list length, we can find any Map's length as well
  // print(student.length);

// Let suppose we have a Map named students and each student have unique id

  // Map<int, dynamic> students = {
  //   1: 'Mohsin',
  //   2: 'Arbab',
  //   3: 'Ali',
  // };

  // print(students);
  // Now if we want to add a new student named Bilal to the Map on a new id but by mistake if we entered the same roll number which existed before.

  // String newStudent = 'Bilal';

  // students[3] = newStudent;
  // print(students);

  // We have seen that it did not check, instead it had over writed the student
  // To avoide this we use a method for map which is

  // String newStudent = students.putIfAbsent(3, () => 'Bilal');
  // print(newStudent);

  // Above method return the student which was holding same roll number which we had assigned to the new student.

  // String newStudents = students.putIfAbsent(4, () => 'Bilal');
  // print(newStudents);

  // Summary of putIfAbsent is that if a key does not exist in a map it would add it and if a key already exists it would return it.

  // Map<String, dynamic> students = {
  //   'name1': 'Mohsin',
  //   'name2': 'Arbab',
  //   'name3': 'Ali',
  //   'name4': 'Adnan',
  //   'name5': 'Hakim',
  //   'name6': 'Khurram'
  // };
  // print(students.values);

  // students.removeWhere((key, value) => value.endsWith('m'));
  // print(students.values);

  // FUNNY PRACTICE BY SIR BILAL

  // List haha = [
  //   {
  //     0: 0,
  //     1: [1]
  //   },
  //   {'2': '2'},
  //   {
  //     1: {
  //       'hehehe': [
  //         {
  //           'hehehe': {'hahaha': 'bye'}
  //         }
  //       ]
  //     }
  //   }
  // ];

  // // How to get the value of bye

  // print(haha[2][1]['hehehe'][0]['hehehe']['hahaha']);

  // var mohsin = {
  //   'name': 'Mohsin',
  //   'age': 26,
  //   'city': 'Karachi',
  //   'nationality': 'Pakistani',
  //   'language': 'Urdu',
  //   'qualification': 'Hafiz e Quran'
  // };
  // var arbab = {
  //   'name': 'Arbab',
  //   'age': 24,
  //   'city': 'Karachi',
  //   'nationality': 'Pakistani',
  //   'language': 'Urdu',
  //   'course': 'MS Office'
  // };

  // var ali = {
  //   'name': 'Ali',
  //   'age': 29,
  //   'city': 'Karachi',
  //   'nationality': 'Pakistani',
  //   'language': 'Urdu',
  //   'skill': 'javaScript'
  // };

  // This is how can we merge maps
  // Map brothers = {}
  //   ..addAll(mohsin)
  //   ..addAll(arbab)
  //   ..addAll(ali);

  // By using spread operators we can also merge maps
  // var brothers = {...mohsin, ...arbab, ...ali};

  // print(brothers);

  Map<String, dynamic> student = {
    'name': 'Mohsin',
    'age': 26,
    'city': 'Karachi'
  };

  // bool isContainKey = student.containsKey('city');
  // bool isContainVal = student.containsValue('Mohsin');

  // print(isContainKey);
  // print(isContainVal);

  student.forEach((key, value) {
    print('$key => $value');
  });
}
