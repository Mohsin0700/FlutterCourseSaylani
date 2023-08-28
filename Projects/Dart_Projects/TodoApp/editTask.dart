import 'dart:io';
import 'allTasks.dart';
import 'viewTasks.dart';

editTask() {
  print('**********+= Edit Task =+**********');

  print('Enter Task ID');
  String id = stdin.readLineSync()!;

  print('Enter New Task Name');
  String newTaskName = stdin.readLineSync()!;

  print('Press "c" to change status');
  String status = stdin.readLineSync()!;

  allTasks.forEach((element) {
    if (element['id'] == id) {
      element['name'] = newTaskName;
    }
    if (status == 'c') {
      if (element['isDone'] == true) {
        element['isDone'] = false;
      } else if (element['isDone'] == false) {
        element['isDone'] = true;
      }
    }
  });
  print('Task has been edited successfully');
  viewTasks();
}
