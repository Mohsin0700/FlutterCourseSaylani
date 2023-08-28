import 'dart:io';
import 'addTask.dart';
import 'completedTask.dart';
import 'viewTasks.dart';
import 'pendingTask.dart';

void main() {
  Home();
}

Home() {
  print('**********Welcome to My Todo App**********');
  print('Plese choose an option.');
  print('Press 01  view all tasks');
  print('Press 02  pending tasks');
  print('Press 03  completed tasks');
  print('Press 04  Add new task');

  var input = stdin.readLineSync();

  if (input == '1') {
    viewTasks();
  } else if (input == '2') {
    pendingTasks();
  } else if (input == '3') {
    completedTask();
  } else if (input == '4') {
    addTask();
  }
}
