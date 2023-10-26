import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice/models/practice_model.dart';
import 'dart:convert';

class Practice extends StatelessWidget {
  const Practice({super.key});

  Future getData() async {
    List<PracticeModel> model = [];
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    var response = await http.get(url);
    var responseBody = json.decode(response.body);
    print('01 ${responseBody}');

    for (var res in responseBody) {
      model.add(PracticeModel.fromJson(res));
    }

    print(model);
    return model;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () => getData(),
                icon: const Icon(Icons.push_pin_sharp),
                label: const Text('Push to get Data')),
            FutureBuilder(
                future: getData(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Text(PracticeModel().title!);
                          }),
                    );
                  }
                  return const CircularProgressIndicator();
                })
          ],
        ),
      ),
    );
  }
}
