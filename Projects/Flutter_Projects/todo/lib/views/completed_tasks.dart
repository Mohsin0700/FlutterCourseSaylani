import 'package:flutter/material.dart';
import 'package:todo/views/all_tasks.dart';

List completedTasks = [];

class CompletedTasks extends StatelessWidget {
  CompletedTasks({super.key}) {
    updateCompletedTasks();
  }

  static updateCompletedTasks() {
    completedTasks.clear();
    AllTasksContainer.allTasks.forEach((element) {
      if (element['isDone'] == true) {
        if (completedTasks.contains(element)) {
        } else {
          completedTasks.add(element);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: completedTasks.length,
        itemBuilder: (c, i) {
          return Container(
            margin: const EdgeInsets.only(top: 5),
            child: ListTile(
              tileColor: Colors.black12,
              leading: Text(
                (i + 1).toString(),
              ),
              title: Text(completedTasks[i]['name'].toString()),
              trailing: const Icon(
                Icons.done,
                color: Colors.blue,
              ),
            ),
          );
        });
  }
}
