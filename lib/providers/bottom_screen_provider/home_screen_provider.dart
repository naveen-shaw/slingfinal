

import '../../config.dart';

class HomeScreenProvider extends ChangeNotifier {
  List optionList = [];
  List selectService = [];
  List transaction = [];
  List billDetails = [];
  List savingPlan = [];
  List newsUpdate = [];
  List otherOption = [];
  List addPayeeList = [];
  List messageList = [];
  List quickSend = [];
  double sliderValue = 0;
  bool isNewsLayout = false;
  int? selectedNewsIndex;
  final ScrollController scrollController = ScrollController();
  dynamic selectCard;
  dynamic gender;
  dynamic from;

  List slider = [
    eImageAssets.sliderItemOne,
    eImageAssets.sliderItemTwo,
    eImageAssets.sliderItemThree
  ];

  // Initialize list
  init() {
    optionList = appArray.optionList;
    selectService = appArray.selectService;
    quickSend = appArray.quickSend;
    transaction = appArray.transaction;
    billDetails = appArray.billDetails;
    savingPlan = appArray.savingPlan;
    newsUpdate = appArray.newsUpdate;
    addPayeeList = appArray.addPayeeList;
    messageList = appArray.messageList;
    from = dialogDropDownItems[1]['value'];

    notifyListeners();
  }

//slider change value
  sliderValueChange(value) {
    sliderValue = value;
    notifyListeners();
  }

//selectCard change value
  selectCardChange(value) {
    selectCard = value;
    notifyListeners();
  }

  //gender change value
  genderChange(value) {
    selectCard = value;
    notifyListeners();
  }

  //form change value
  formChange(newValue) {
    from = newValue; // Set from to newValue

    notifyListeners();
  }

  // Create DropdownMenuItem widgets from the list of dropdown items
  List piDropDownItems = [
    {'value': 1, 'label': 'Male'},
    {'value': 2, 'label': 'Female'},
    {'value': 3, 'label': 'Other'},
  ];

  //select card number dropDown layout
  List dialogDropDownItems = [
    {'value': 1, 'label': '**** **** **** 1566 - Saving a/c'},
    {'value': 2, 'label': '**** **** **** 1566 - Saving a/c'},
    {'value': 3, 'label': '**** **** **** 1566 - Saving a/c'},
  ];

  listOnTap(int index, BuildContext context, RequestProvider reqCtrl) {
    switch (index) {
      case 0:
        route.pushNamed(context, routeName.transferMoneyScreen);
      case 1:
        route.pushNamed(context, routeName.billDetailsScreen);
      case 2:
        reqCtrl.requestMoneyOnTapFalse();
        route.pushNamed(context, routeName.requestScreen);

      case 3:
        route.pushNamed(context, routeName.withdrawScreen);
    }
  }
}
