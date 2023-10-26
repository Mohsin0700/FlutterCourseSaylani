import 'package:flutter/material.dart';

class MyListViewBuilder extends StatefulWidget {
  const MyListViewBuilder({super.key});

  @override
  State<MyListViewBuilder> createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  List friendlist = ['Munawar', 'Khurram', 'Kamran', 'Noman', 'Saim'];

  TextEditingController addTaskController = TextEditingController();

  addItem() {
    setState(() {
      friendlist.add(addTaskController.text);
    });
    addTaskController.clear();
  }

  deleteItem(i) {
    setState(() {
      friendlist.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: TextField(
            style: const TextStyle(color: Colors.green),
            controller: addTaskController,
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      addItem();
                    },
                  );
                },
                child: const Text('Add Item')),
          ]),
      body: ListView.builder(
          itemCount: friendlist.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: ListTile(
                tileColor: Colors.lime,
                title: Text(
                  friendlist[index],
                ),
                trailing: IconButton(
                  onPressed: () {
                    deleteItem(index);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ),
            );
          }),
    );
  }
}
