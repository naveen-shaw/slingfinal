import 'dart:developer';
import '../../config.dart';

class TransferMoneyProvider extends ChangeNotifier {
  TabController? tabController;
  List selectBankList = [];
  List viewTransaction = [];
  List recentPayeesList = [];
  List amountList = [];
  dynamic bankName;
  dynamic selectService;
  dynamic selectBank;
  dynamic contactSelectBank;
  dynamic rcSelectBank;

  List<DropdownMenuItem<dynamic>>? dropdownMenuItems;
  TextEditingController amountCtrl = TextEditingController();
  TextEditingController requestAmountCtrl = TextEditingController();

  //bank Name on change value
  dropDownBankNameOnChange(value) {
    bankName = value;
    notifyListeners();
  }

  //Select Service on change value
  dropDownSelectServiceOnChange(value) {
    selectService = value;
    notifyListeners();
  }
  //selectBank on change value
  selectBankOnChange(value) {
    selectBank = value;
    notifyListeners();
  }

//contactSelectBank on change value
  contactSelectBankOnChange(value) {
    contactSelectBank = value;
    notifyListeners();
  }
//contactSelectBank on change value
  rcSelectBankOnChange(value) {
    rcSelectBank = value;
    notifyListeners();
  }

  // Initialize list
  init() {
    selectBankList = appArray.selectBankList;
    viewTransaction = appArray.viewTransaction;
    recentPayeesList = appArray.recentPayees;
    amountList = appArray.amountList;

    notifyListeners();
  }

  // Create DropdownMenuItem widgets from the list of dropdown items
  List<Map<String, dynamic>> dropdownItems = [
    {'value': 1, 'label': 'HDFC Bank'},
    {'value': 2, 'label': 'State Bank of India'},
    {'value': 3, 'label': 'Bank of Baroda'},
  ];

  // update text amount changes
  void updateTextField(int index, String amount) {
    amountCtrl.text = amount;
    requestAmountCtrl.text = amount;
  }

  // Update the isCheck value for the tapped container
  void updateIsCheckForBank(
      Map<String, dynamic> bankInfo, BuildContext context) {
    final int tappedIndex =
        selectBankList.indexWhere((element) => element == bankInfo);
    if (tappedIndex != -1) {
      // Set all isCheck values to false by default
      for (int i = 0; i < selectBankList.length; i++) {
        selectBankList[i]['isCheck'] = false;
      }
      // Update the isCheck value for the tapped container
      selectBankList[tappedIndex]['isCheck'] = true;
      notifyListeners();
      log("select bankList = ${selectBankList[tappedIndex]['isCheck']}");
    }
  }
//send request dialog button dialog layout
  sendRequestDialog(context){
    return  commonDialog(context, false,
        text: appFonts.requestSuccessfullySent,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer2<RequestProvider,BottomNavigationProvider>(builder: (context, reqCtrl, bottomCtrl, child) {
            return Column(
              children: [
                Image.asset(eImageAssets.successFullyTransfer)
                    .padding(bottom: Sizes.s15),
                TextWidgetCommon(
                    text:
                    '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.numbers)).toStringAsFixed(2)}',
                    style: AppCss.latoBold30
                        .textColor(appColor(context).appTheme.primary))
                    .padding(bottom: Sizes.s8),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: language(context, appFonts.diane),
                          style: AppCss.latoLight16
                              .textColor(appColor(context).appTheme.primary)
                              .textHeight(Sizes.s1)),
                      TextSpan(
                          text:
                          " ${language(context, appFonts.hasGotAnApplication)}",
                          style: AppCss.latoLight16.textColor(
                              appColor(context).appTheme.lightText))
                    ])).width(Sizes.s250).padding(bottom: Sizes.s30),
                CommonAuthButton(text: appFonts.backToHome,onTap: () {reqCtrl.requestMoneyOnTapFalse();
                bottomCtrl.onTap(context);} )
              ],
            );
          },

          ),

        ]);
  }
}
