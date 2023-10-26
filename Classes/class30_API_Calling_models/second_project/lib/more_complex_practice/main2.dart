import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:second_project/more_complex_practice/child_user.dart';
import 'package:second_project/more_complex_practice/user_model.dart';

class Main2 extends StatelessWidget {
  const Main2({super.key});

  Future<List<UserModel>> getDataFromApi() async {
    List<UserModel> userModels = [];

    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');

    var res = await http.get(url);

    var response = json.decode(res.body);
    for (var i in response) {
      userModels.add(UserModel.fromJson(i));
    }
    return userModels;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder(
          future: getDataFromApi(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChildUser(
                                  user: snapshot.data![index],
                                )));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      color: Colors.red,
                      child:
                          ListTile(title: Text(snapshot.data![index].title!))),
                );
              });
            }
            return const Center(child: CircularProgressIndicator());
          }),
    ));
  }
}
