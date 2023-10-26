import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCalling extends StatelessWidget {
  const ApiCalling({super.key});
  getApiData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');

    var respone = await (http.get(url));
    // print(respone.body);
    // print(respone.body[0]);
    print('working');

    var bodyResponse = json.decode(respone.body);
    print(bodyResponse[0]['title']);
    return bodyResponse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getApiData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                const Center(child: Text('There is some data'));
              });
            }
            return const Center(child: CircularProgressIndicator());
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          getApiData();
        },
        child: const Icon(Icons.push_pin),
      ),
    );
  }
}
