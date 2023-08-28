import 'package:flutter/material.dart';
import 'package:todo/views/completed_tasks.dart';
import 'package:todo/views/pending_tasks.dart';

class AllTasksContainer extends StatefulWidget {
  static List allTasks = [
    {
      'name': 'Flutter Padhni hai',
      'isDone': false,
    },
    {
      'name': 'Todo Banani Hai',
      'isDone': false,
    },
    {
      'name': 'Navigation padhni hain',
      'isDone': false,
    },
    {
      'name': 'splash screen padhni hai',
      'isDone': false,
    },
  ];

  const AllTasksContainer({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => throw UnimplementedError();
}

class AllTasks extends StatefulWidget {
  const AllTasks({super.key});
  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  TextEditingController addTaskController = TextEditingController();
  TextEditingController editTaskController = TextEditingController();
  bool value = false;
  updateTask(i) {
    if (AllTasksContainer.allTasks[i]['isDone'] == false) {
      AllTasksContainer.allTasks[i]['isDone'] = true;
    } else {
      AllTasksContainer.allTasks[i]['isDone'] = false;
    }
    CompletedTasks.updateCompletedTasks();
    CompletedTasks();

    PendingTasks.updatePendingTasks();
    PendingTasks();
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(Icons.system_update),
            iconColor: const Color.fromARGB(255, 10, 50, 82),
            title: const Text('Task has been updated successfully'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Done'),
              ),
            ],
          );
        });
  }

  editTask(i) {
    editTaskController.text = AllTasksContainer.allTasks[i]['name'];
    showDialog(
      context: (context),
      builder: (context) {
        return AlertDialog(
          title: const Text('Update Task'),
          content: TextField(
            controller: editTaskController,
            decoration: const InputDecoration(hintText: 'Enter Task'),
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    AllTasksContainer.allTasks[i]['name'] =
                        editTaskController.text;
                  });
                  Navigator.pop(context);
                },
                child: const Text('Update')),
          ],
        );
      },
    );
  }

  deleteTask(i) {
    setState(() {
      // ignore: unused_local_variable
      final updatedTasks = AllTasksContainer.allTasks.removeAt(i);
      CompletedTasks.updateCompletedTasks();
      CompletedTasks();

      PendingTasks.updatePendingTasks();
      PendingTasks();
    });
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(Icons.delete_forever_sharp),
            iconColor: const Color.fromARGB(255, 214, 21, 7),
            title: const Text('Task has been deleted successfully'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Done'),
              ),
            ],
          );
        });
  }

  addTask() {
    setState(() {
      AllTasksContainer.allTasks.add(
        {
          'name': addTaskController.text,
          'isDone': false,
        },
      );
    });
    addTaskController.clear();
    CompletedTasks.updateCompletedTasks();
    CompletedTasks();

    PendingTasks.updatePendingTasks();
    PendingTasks();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(Icons.check_circle_outline),
            iconColor: Colors.green,
            title: const Text('Task has been added successfully'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Done'),
              ),
            ],
          );
        });
  }

  void toggleCheckbox() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: addTaskController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    addTask();
                  },
                  child: const Text('+Add'))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: AllTasksContainer.allTasks.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: ListTile(
                    tileColor: Colors.black12,
                    leading: Text(
                      (index + 1).toString(),
                    ),
                    title: Text(
                        AllTasksContainer.allTasks[index]['name'].toString()),
                    trailing: Wrap(
                      children: [
                        Checkbox(
                            checkColor: Colors.blue,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: AllTasksContainer.allTasks[index]['isDone'],
                            onChanged: (value) {
                              toggleCheckbox();
                              updateTask(index);
                            }),
                        const SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          color: Colors.blue,
                          onPressed: () {
                            editTask(index);
                          },
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {
                            print('Delete button is working');
                            deleteTask(index);
                          },
                          color: Colors.red,
                          icon: const Icon(Icons.delete_outline_rounded),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    // MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return const Color.fromARGB(255, 76, 82, 87);
  }
  return Colors.white;
}
