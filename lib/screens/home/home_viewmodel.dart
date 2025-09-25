import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int counter = 0;

  CountedValue() {
    counter++;
    rebuildUi();
  }
}
