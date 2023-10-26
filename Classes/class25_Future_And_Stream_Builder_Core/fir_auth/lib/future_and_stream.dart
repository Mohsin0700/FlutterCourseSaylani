import 'package:flutter/material.dart';

class FutureAndStream extends StatefulWidget {
  const FutureAndStream({super.key});

  @override
  State<FutureAndStream> createState() => _FutureAndStreamState();
}

class _FutureAndStreamState extends State<FutureAndStream> {
  // int itemCount = 0;
  Future<int> futureCounter(number) async {
    await Future.delayed(const Duration(seconds: 3));
    return number + 2;
  }

  Stream<int> streamCounter(int count) async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: futureCounter(15),
              builder: (context, snapshots) {
                if (snapshots.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                return Text(
                  "Future ${snapshots.data.toString()}",
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
            StreamBuilder(
                stream: streamCounter(0),
                builder: (context, snapshots) {
                  if (snapshots.hasData) {
                    return Text(
                      "Stream ${snapshots.data.toString()}",
                      style: const TextStyle(fontSize: 25),
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
