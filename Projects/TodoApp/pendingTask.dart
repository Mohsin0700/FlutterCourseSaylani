import 'dart:io';
import 'allTasks.dart';
import 'main.dart';

void pendingTasks() {
  List<Map<String, dynamic>> pendingTask = [];

  print('**********+= All Pending Tasks =+**********');
  allTasks.forEach((element) {
    if (element['isDone'] == false) {
      pendingTask.add(element);
    }
  });
  print(pendingTask);

  print('Press 0 to go back to Home Screen');
  var input = stdin.readLineSync();
  if (input == '0') {
    Home();
  }
}
