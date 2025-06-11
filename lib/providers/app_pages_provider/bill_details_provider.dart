

import 'package:mpay/config.dart';

class BillDetailsProvider extends ChangeNotifier {
  List lastPaid = [];

// Initialize list
  init() {
    lastPaid = appArray.lastPaid;
    notifyListeners();
  }
}
