import '../../config.dart';

class RequestProvider extends ChangeNotifier{

  bool requestMoney = false;

  //request money tap false
  requestMoneyOnTapFalse() {
    requestMoney = false;
    notifyListeners();
  }
//request money tap true
  requestMoneyOnTapTrue() {
    requestMoney = true;
    notifyListeners();
  }
}