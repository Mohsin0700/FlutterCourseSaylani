import 'package:flutter/material.dart';
import 'package:todo/views/all_tasks.dart';
import 'package:todo/views/completed_tasks.dart';
import 'package:todo/views/pending_tasks.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Icon(Icons.watch_later_outlined),
        title: const Text('Task Manager'),
        bottom: const TabBar(
          tabs: [Text('All Tasks'), Text('Completed'), Text('Pending')],
        ),
      ),
      body: TabBarView(children: [
        const AllTasks(),
        CompletedTasks(),
        PendingTasks(),
      ]),
    );
  }
}
