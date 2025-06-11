import 'package:flutter/cupertino.dart';

class SignInProvider extends ChangeNotifier {
  bool isCheck = false;
// check box change value true or false
  isCheckBoxCheck(value) {
    isCheck = value;
    notifyListeners();
  }
}
