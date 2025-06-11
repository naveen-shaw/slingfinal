import 'package:flutter/cupertino.dart';

class SignUpScreenProvider extends ChangeNotifier{

  bool isCheck = false;
// SignUp screen check box change value true or false
  isCheckBoxCheck(value) {
    isCheck = value;
    notifyListeners();
  }

}