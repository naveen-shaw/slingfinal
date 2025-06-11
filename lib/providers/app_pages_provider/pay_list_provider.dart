import 'dart:developer';

import 'package:mpay/config.dart';

class PayListProvider extends ChangeNotifier {
  List payListSelectCard = [];
  String? selectedLanguageOption = 'Anirudhaa Mehra';
  bool isSelected = false;
  int selectedIndex = -1;
  dynamic selectedCurrencyOption;

TextEditingController price = TextEditingController();
//list initialized
  init() {
    payListSelectCard = appArray.payListSelectCard;
    selectedCurrencyOption = payListSelectCard[0];
    notifyListeners();
  }
//pay List change value
  payListChangeValue(e) {
      selectedIndex = e.key;
    notifyListeners();
  }

  //account select radio button change value
  radioValueChange(value,context) {
    log("message==>$value");
    selectedCurrencyOption = value!;
route.pushNamed(context, routeName.payingLoadingScreen);
    notifyListeners();
  }
//text filed change value
  changeValue(){
    notifyListeners();
  }
}
