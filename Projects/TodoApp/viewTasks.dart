import 'dart:io';
import 'addTask.dart';
import 'allTasks.dart';
import 'deleteTask.dart';
import 'editTask.dart';
import 'main.dart';

void viewTasks() {
  print('**********+= All Tasks =+**********');
  print(allTasks);

  print('Press 0 to go back to Home Screen');
  print('Press 4 to add a task');
  print('Press 5 to edit a task');
  print('Press 9 to delete a task');
  var input = stdin.readLineSync();
  if (input == '0') {
    Home();
  } else if (input == '4') {
    addTask();
  } else if (input == '5') {
    editTask();
  } else if (input == '9') {
    deleteTask();
  }
}
