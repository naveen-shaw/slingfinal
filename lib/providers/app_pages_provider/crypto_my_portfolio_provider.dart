import 'dart:developer';
import 'package:mpay/config.dart';

class CryptoMyPortfolioProvider extends ChangeNotifier {
  List myCurrency = [];
  List portfolioAmount = [];
  List buyCurrencyTitle = [];
  List revenueFlowMonth = [];
  List revenueFlowPercentage = [];
  String? selectedCurrencyOption;
  int? selectedIndex = 3;
  TextEditingController paymentMethod = TextEditingController();
  TextEditingController amount = TextEditingController();
dynamic selectCrypto;
  List selectCryptoDropDownItems = [
    {'value': 1, 'label': 'Bitcoin'},
    {'value': 2, 'label': 'Ethereum'},
    {'value': 3, 'label': 'binance'},
  ];

  // list initialization
  init() {
    myCurrency = appArray.myCurrency;
    portfolioAmount = appArray.portfolioAmount;
    buyCurrencyTitle = appArray.buyCurrencyTitle;
    revenueFlowMonth = appArray.revenueFlowMonth;
    revenueFlowPercentage = appArray.revenueFlowPercentage;
    selectedCurrencyOption = buyCurrencyTitle[0];
    selectCrypto = selectCryptoDropDownItems[1]['value'];
    paymentMethod.text = "Mastercard";
    amount.text = "1 USD";
    notifyListeners();
  }

//radio button change value
  radioValueChange(value) {
    selectedCurrencyOption = value!;
    log("message==>$value");
    notifyListeners();
  }

//revenue month list tap change
  revenueOnTap(index) {
    selectedIndex = index;
    notifyListeners();
  }
//revenue month list tap change
  selectCryptoDropDownItemsOnTap(index) {
    selectCrypto = index;
    notifyListeners();
  }
//buy and sell dialog button dialog layout
  buySellOnTap(value, context) {
    log("message==>$value");
    if (selectedCurrencyOption== appFonts.buy) {
      commonDialog(context, false,
          text:appFonts.buyCryptocurrency,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             TextWidgetCommon(text: appFonts.selectCryptocurrency),
            CommonDropDownMenu(value: selectCrypto,onChanged: (value) => selectCryptoDropDownItemsOnTap(value),
                hintText: appFonts.selectCryptocurrency,
                itemsList: selectCryptoDropDownItems
                    .map((item) => DropdownMenuItem<dynamic>(
                    value: item['value'],
                    child: TextWidgetCommon(text: item['label'])))
                    .toList()).padding(top: Sizes.s8,bottom: Sizes.s20),
             TextWidgetCommon(text: appFonts.selectPaymentMethod),
             TextFiledCommon(hintText: appFonts.enterPaymentMethod,controller: paymentMethod).padding(top: Sizes.s8,bottom: Sizes.s20),
             TextWidgetCommon(text: appFonts.walletAddress),
             TextFiledCommon(hintText: appFonts.enterWalletAddress)
                .padding(top: Sizes.s8, bottom: Sizes.s20),
             TextWidgetCommon(text: appFonts.amount),
             TextFiledCommon(hintText: appFonts.enterAmount,controller: amount)
                .padding(top: Sizes.s8, bottom: Sizes.s30),
            CommonAuthButton(text: "${appFonts.buy} ${appFonts.currency}",onTap: () => route.pop(context))
          ]);
    }else{
      commonDialog(context, false,
          text: appFonts.sellCryptocurrency,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             TextWidgetCommon(text: appFonts.selectCryptocurrency),
            CommonDropDownMenu(value: selectCrypto,onChanged: (value) => selectCryptoDropDownItemsOnTap(value),
                hintText: appFonts.selectCryptocurrency,
                itemsList: selectCryptoDropDownItems
                    .map((item) => DropdownMenuItem<dynamic>(
                    value: item['value'],
                    child: TextWidgetCommon(text: item['label'])))
                    .toList()).padding(top: Sizes.s8,bottom: Sizes.s20),
             TextWidgetCommon(text: appFonts.walletAddress),
             TextFiledCommon(hintText: appFonts.enterWalletAddress)
                .padding(top: Sizes.s8, bottom: Sizes.s20),
            TextWidgetCommon(text: appFonts.amount),
            TextFiledCommon(hintText: appFonts.enterAmount,controller: amount)
                .padding(top: Sizes.s8, bottom: Sizes.s30),
            CommonAuthButton(text: "${language(context, appFonts.sell)} ${language(context, appFonts.currency)}",onTap: () => route.pop(context))
          ]);
    }
  }
}
