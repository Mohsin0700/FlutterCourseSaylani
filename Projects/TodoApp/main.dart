import 'dart:io';
import 'viewTasks.dart';

void main() {
  print('**********Welcome to My Todo App**********');
  print('Plese choose an option.');
  print('Press 01  view all tasks');
  print('Press 02  pending tasks');
  print('Press 03  completed tasks');
  print('Press 04  Add new task');

  var input = stdin.readLineSync();

  if (input == '1') {
    viewTasks();
  }
}
