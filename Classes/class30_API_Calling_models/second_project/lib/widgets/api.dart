import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCalling extends StatelessWidget {
  const ApiCalling({super.key});
  getApiData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users');

    var respone = await (http.get(url));

    var bodyResponse = json.decode(respone.body);

    return bodyResponse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getApiData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                // return const Center(child: Text('Data is here'));
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        margin: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(snapshot.data[index]['name']),
                            // Text(snapshot.data[index]['email']),
                          ],
                        ),
                      );
                    });
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }
}
