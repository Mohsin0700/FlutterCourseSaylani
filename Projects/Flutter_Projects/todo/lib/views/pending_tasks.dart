import 'package:flutter/material.dart';
import 'package:todo/views/all_tasks.dart';

List pendingTasks = [];

class PendingTasks extends StatelessWidget {
  PendingTasks({super.key}) {
    updatePendingTasks();
  }

  static updatePendingTasks() {
    pendingTasks.clear();
    AllTasksContainer.allTasks.forEach((element) {
      if (element['isDone'] == false) {
        if (pendingTasks.contains(element)) {
          // ignore: unused_local_variable
          var check = true;
        } else {
          pendingTasks.add(element);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: pendingTasks.length,
        itemBuilder: (c, i) {
          return Container(
            margin: const EdgeInsets.only(top: 5),
            child: ListTile(
              tileColor: Colors.black12,
              leading: Text(
                (i + 1).toString(),
              ),
              title: Text(pendingTasks[i]['name'].toString()),
              trailing: const Icon(
                Icons.update,
                color: Colors.orange,
              ),
            ),
          );
        });
  }
}
