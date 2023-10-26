import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practice/api_model.dart';

class API extends StatelessWidget {
  const API({super.key});

  // For a map / single item
  // Future<PracticeModel> fetchData() async {
  //   List<PracticeModel> model = [];
  //   var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
  //   var response = await http.get(url);
  //   var responseBody = json.decode(response.body);
  //   return PracticeModel.fromJson(responseBody);
  // }

  Future<List<PracticeModel>> fetchData() async {
    List<PracticeModel> model = [];
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');
    var response = await http.get(url);
    var responseBody = json.decode(response.body);

    for (var r in responseBody) {
      model.add(PracticeModel.fromJson(r));
    }

    return model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API Calling'),
        ),
        body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('I will call API from this page'),
                    ElevatedButton(
                        onPressed: () {
                          fetchData();
                        },
                        child: const Text('Click to fetch data')),
                    // FutureBuilder(
                    //     future: fetchData(),
                    //     builder: (context,
                    //         AsyncSnapshot<List<PracticeModel>> snapshot) {
                    //       if (snapshot.hasData) {
                    //         ListView.builder(itemBuilder: (context, index) {
                    //           return ListTile(
                    //               title: Text(snapshot.data![index].title!));
                    //         });
                    //         //   return ListTile(title: Text(snapshot.data!.body!));
                    //       }
                    //       return const Center(
                    //         child: CircularProgressIndicator(
                    //           color: Colors.amberAccent,
                    //         ),
                    //       );
                    //     })
                    FutureBuilder(
                        future: fetchData(),
                        builder: (context,
                            AsyncSnapshot<List<PracticeModel>> snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(snapshot.data![index].title!),
                                  );
                                });
                          }
                          return const Text('No Data Loaded From Server');
                        })
                  ]),
            )));
  }
}
