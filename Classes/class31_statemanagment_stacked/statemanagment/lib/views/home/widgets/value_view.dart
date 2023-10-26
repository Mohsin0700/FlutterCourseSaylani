import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagment/views/home/home_viewmodel.dart';

class Value extends ViewModelWidget<HomeViewModel> {
  const Value({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    print('Specific widget');
    return Column(
      children: [Text(viewModel.num.toString())],
    );
  }
}
