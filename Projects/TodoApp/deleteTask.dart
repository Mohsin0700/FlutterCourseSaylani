import 'dart:io';
import 'allTasks.dart';
import 'viewTasks.dart';

deleteTask() {
  print('**********+= Delete Task =+**********');

  print('Enter Task ID');
  String id = stdin.readLineSync()!;

  allTasks.removeWhere((element) => element['id'] == id);
  print('Task has been deleted successfully');

  viewTasks();
}
