import 'package:rx_notifier/rx_notifier.dart';

class HomeController {
  final tabIndex = RxNotifier<int>(0);

  void setTabIndex(int value) {
    tabIndex.value = value;
  }
}
