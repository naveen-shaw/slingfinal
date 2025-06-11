import '../../config.dart';

class AllServiceProvider extends ChangeNotifier {
  List allServices = [];
  // Initialize list
  init() {
    allServices = appArray.allServiceList;
    notifyListeners();
  }
}
