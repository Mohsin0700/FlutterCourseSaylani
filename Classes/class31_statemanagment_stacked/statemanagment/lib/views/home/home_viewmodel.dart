import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int num = 0;

  addNum() {
    num++;
    rebuildUi();
  }
}
