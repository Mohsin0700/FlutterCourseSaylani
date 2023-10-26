import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practice/api/single_child.dart';

class ApiLocal extends StatefulWidget {
  const ApiLocal({super.key});

  @override
  State<ApiLocal> createState() => _ApiLocalState();
}

class _ApiLocalState extends State<ApiLocal> {
  Future getData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    var response = await http.get(url);
    var responseBody = json.decode(response.body);
    return responseBody;
  }

  initState() {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleChild(
                                      child: snapshot.data![index],
                                    )));
                      },
                      child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(top: 15),
                          color: Colors.greenAccent,
                          child:
                              Text('Mohsin ${snapshot.data[index]['title']}')),
                    );
                  }),
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
