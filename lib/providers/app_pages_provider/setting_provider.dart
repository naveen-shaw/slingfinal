import 'dart:developer';

import '../../config.dart';

class SettingProvider extends ChangeNotifier {
  String? selectedLanguageOption ;

  String? selectedCurrencyOption;

  List languageList = [];
  List currencyList = [];
  bool isPaymentNotification = true;
  bool isNotificationSound = false;
  bool isBillDate = true;

// Initialize list
  init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    languageList = appArray.languageList;
    currencyList = appArray.currencyList;
    selectedCurrencyOption = prefs.getString('selectedCurrency') ??currencyList[0]['title'];
    selectedLanguageOption = prefs.getString('selectedLanguage') ?? languageList[0]['title'];
    notifyListeners();
  }
  // Method to save selected language to shared preferences
  Future<void> saveSelectedLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', language);

  }  // Method to save selected currency to shared preferences
  Future<void> saveSelectedCurrency(String currency) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedCurrency', currency);

  }
//language change value
  languageChangeValue(
    value,context
  ) {
    log("VVV :$value");
var lan = Provider.of<LanguageProvider>(context,listen: false);
    if (value == null || value.isEmpty) {
      // If no language is selected, default to English
      value = 'english';
    } else {
      switch (value) {
        case 'english':
        case 'arabic':
        case 'french':
        case 'hindi':
          lan.changeLocale(value);
          selectedLanguageOption = value;
          // Save the selected language to shared preferences
          saveSelectedLanguage(value);
          break;
        default:
          log("Invalid language: $value");
          // If an invalid language is provided, default to English
          selectedLanguageOption = value;
      }
    }

    notifyListeners();
  }

//paymentNotification switch
  paymentNotificationSwitch() {
    isPaymentNotification = !isPaymentNotification;
    notifyListeners();
  }
  //Notification switch

  notificationSoundSwitch() {
    isNotificationSound = !isNotificationSound;
    notifyListeners();
  } //Bill due Date switch

  billDateSwitch() {
    isBillDate = !isBillDate;
    notifyListeners();
  }

  //currency change value
  currencyChangeValue(value, context, v) {
    selectedCurrencyOption = value!;
    saveSelectedCurrency(value);
    CurrencyModel data = CurrencyModel.fromJson(v);
    currency(context).priceSymbol = data.symbol.toString();
    final currencyData = Provider.of<CurrencyProvider>(context, listen: false);
    currencyData.currency = data;
    currencyData.currencyVal = double.parse(data.exchangeRate!);

    currencyData.notifyListeners();
    notifyListeners();
  }
}
