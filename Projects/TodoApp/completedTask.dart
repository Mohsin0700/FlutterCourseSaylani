import 'dart:io';
import 'allTasks.dart';
import 'main.dart';

completedTask() {
  List<Map<String, dynamic>> completedTasks = [];

  print('**********+= All Completed Tasks =+**********');
  allTasks.forEach((element) {
    if (element['isDone'] == true) {
      completedTasks.add(element);
    }
  });
  print(completedTasks);

  print('Press 0 to go back to Home Screen');
  var input = stdin.readLineSync();
  if (input == '0') {
    Home();
  }
}
