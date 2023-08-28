import 'dart:io';
import 'allTasks.dart';
import 'viewTasks.dart';

addTask() {
  print('**********+= Add New Task =+**********');

  print('Enter Task Name');

  String input1 = stdin.readLineSync()!;
  if (input1 == '') {
    print('Task name is compulsory');
    addTask();
  }
  print('Enter Task id');
  String input2 = stdin.readLineSync()!;
  if (input2 == '') {
    print('Task id is compulsory');
    addTask();
  }

  Map<String, dynamic> newTask = {
    'name': input1,
    'id': input2,
    'isDone': false
  };

  allTasks.add(newTask);
  print('Task has been added');
  viewTasks();
}
