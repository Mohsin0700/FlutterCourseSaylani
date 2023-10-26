import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagment/views/home/home_viewmodel.dart';
import 'package:statemanagment/views/home/widgets/value_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    print('main widget');
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Value(),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addNum();
                      },
                      child: const Text('Press'))
                ],
              )),
            ),
          );
        });
  }
}
