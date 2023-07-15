void main() {
  // List
  // A list can be create by just a var keyword

  // var names = ['Mohsin', 'Arbab', 'Kamran', 'Shahid', 'Sami'];
  // print(names);
  // but the problem occures here is that var can store any data instead of only list such as,
  // var name = 'Mohsin';
  // var age = 18;
  // but we usually don't want it
  // So, we create a list using it's specific keyword which is a type.

  // List student = ['Mohsin', 18, true];
  // print(student);

  // but again there is a problem which is that different types of items are lying in the same list and we again don't want it to be. Therefor we define it's types and there will be only one type of elements. We specify child types with angular brackets within List keyword.

  // List<String> students = ['Arbab', 'Bilal', 'Daniyal', 'Ekraash', 'Faiz'];
  // List<String> students = ['Arbab', 'Bilal', 'Daniyal', 'Ekraash', 'Faiz'];
  // print(students);

  // List<int> ages = [23, 24, 18, 19, 21];
  // print(ages);

  // Now, we have known that List can be off different types.
  // It's time to learn it's methods which are amazing, very easy and are more than as compared to javaScript array which almost similar to dart list.

  // List.length method
  // This method gives length of the list
  // print(students.length);
  // print(ages.length);

  // List.first
  // This method returns first element of that list

  // print(students.first);

  // List.last
  // This method returns last element of list

  // print(students.last);

  // List.elementAt()
  // This method gives element of specif index which is specified in round braces

  // print(students.elementAt(3));

  // There is a technique by which we can also get 2nd last, 3rd last values using length method

  // List<String> students = ['Arbab', 'Bilal', 'Daniyal', 'Ekraash', 'Faiz'];

  // String secondLastName = students[students.length - 2];
  // String thirdLastName = students[students.length - 3];
  // print(secondLastName);
  // print(thirdLastName);

  // We have learnt almost all the basics methods regarding list,  now it's time move on to some advanced methods and one of the mose useable method is replace range by using which we can replace one or more elements of an array just like splice mehtod of an array in javaScript.

  List<String> students = ['Arbab', 'Bilal', 'Daniyal', 'Ekraash', 'Faiz'];
  // print(students);

  students.replaceRange(2, 5, ['Mohsin', 'Kamran', 'Munawar']);

  // print(students);

  // Let's see if we don't know exact length of a list and we want to change only last element of that list without knowing it's length.

  students
      .replaceRange(students.length - 1, students.length, ['Adnan', 'Zeeshan']);
  // print(students);

  // By using above logics we can change last, last two, three and for items whatever it's length would be.

  // Next method is List.sort() which shows it's functionality by it's name

  students.sort();
  // print(students);

  // there are two very easy methods to check isListEmpty() and isListNotEmpty();

  // print(students.isEmpty);
  // print(students.isNotEmpty);

  students.clear();
  // print(students);

  // List.add(''); This method is used for adding an element in the end of that list.
  students.add('Hafiz');
  students.add('Mohsin');
  students.add('Muhammad');
  students.add('Arbab');
  students.add('Kamran');
  students.add('Siddiqui');
  students.add('Munawar');
  students.add('Anwar');

  // print(students);

  // List.addAll([]); This method is used to add multiple items in a list which takes an array as an arguement.

  students.addAll(['Iqbal', 'Hussain', 'Shahid', 'Sheikh']);
  // print(students);

  // List.insert() this method is similar to List.add() method but it adds an element on specific index, it takes two arguement first index number where we want to add element instead of only adding in last and second arguement is that what we want to add.
  students.insert(1, 'Muhammad');
  // print(students);

  // List.inserAll() is also same as List.addAll(), and it's function is also same as above

  students.insertAll(3, ['Saleem Sadiq', 'Khurram Zeeshan']);
  // print(students);

  // List.reverse() method is used to reverse the list but it changes it's type from list to anyother which i will see letter

  // print(students);
  // var newStudents = students.reversed;
  // print(newStudents);

  // Now we can see that List has been reversed successfully but it's type has been changed and no any method regarding list would work on it. In order to convert it into List type we use List.of(newList)method

  var newStudentsList = List.of(students.reversed);

  newStudentsList.removeLast();
  print(newStudentsList);

  newStudentsList.removeRange(0, 5);
  print(newStudentsList);
  var oldStudentList = List.of(newStudentsList.reversed);
  print(oldStudentList);

  oldStudentList.removeAt(3);
  print(oldStudentList);

  oldStudentList.removeWhere((element) => element == 'Saleem Sadiq');
  print(oldStudentList);

  // THERE ARE MANY MORE METHODS OF LISTS WHICH CAN BE DISCOVERED BY SIMPLY SEARCHING ON GOOGLE AS PER REQUIREMENT DURING WORK.
  // **************************BEST OF LUCK***********************************
}
