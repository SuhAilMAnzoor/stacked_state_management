import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  int counter = 0;

  addCounterValueFun() {
    counter++;
    rebuildUi();
  }
}
