import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:second_project/models/post_model.dart';

class ApiCalling extends StatelessWidget {
  const ApiCalling({super.key});

  Future<List<PostModell>> getApiData() async {
    List<PostModell> model = [];
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');

    var response = await (http.get(url));

    var bodyResponse = json.decode(response.body);

    // return bodyResponse;
    for (var res in bodyResponse) {
      model.add(PostModell.fromJson(res));
    }
    return model;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
              future: getApiData(),
              builder: (context, AsyncSnapshot<List<PostModell>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          margin: const EdgeInsets.only(top: 15),
                          child: Column(children: [
                            Text(snapshot.data![index].title!),
                            Text(snapshot.data![index].id!.toString()),
                          ]),
                        );
                      });
                }
                return const Center(child: CircularProgressIndicator());
              })),
    );
  }
}
