import 'package:flutter/material.dart';

class ColunmAndListViewBuilder extends StatelessWidget {
  const ColunmAndListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Collapse b/w colunm and list_View_Builder'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.pinkAccent,
              ),
              // Expanded(
              //   flex: 5,
              //   child: Container(
              //     width: double.infinity,
              //     color: Colors.black,
              //   ),
              // ),
              // // Container(
              //   height: 50,
              //   width: double.infinity,
              //   color: Colors.green,
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const ListTile(
                        title: Text('data'),
                        tileColor: Color.fromARGB(255, 243, 180, 86),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
