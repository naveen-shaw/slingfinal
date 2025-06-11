import 'package:flutter/cupertino.dart';

class SetPinProvider extends ChangeNotifier {
  bool showPin = true;
  bool showConfirmPin = true;

  //confirm password show and hide
  onShowConfirmPin() {
    showConfirmPin = !showConfirmPin;
    notifyListeners();
  }

  //enter password show and hide
  onShowPin() {
    showPin = !showPin;
    notifyListeners();
  }
}
