import 'allTasks.dart';

void viewTasks() {
  print(allTasks);
}

voidpendingTasks() {
  var result = allTasks.retainWhere((element) => element.containsValue(false));
  print(result);
}
