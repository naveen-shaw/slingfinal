import '../../config.dart';

class SavingPlanProvider extends ChangeNotifier {
  List savingPlanList = [];
  dynamic selectCategory;

// Initialize list
  init() {
    savingPlanList = appArray.savingPlanList;
    notifyListeners();
  }

  //saving category dropDown layout
  List savingDropDownItems = [
    {'value': 1, 'label': 'New Car'},
    {'value': 2, 'label': 'Grand Home'},
    {'value': 3, 'label': 'Gaming console'},
    {'value': 4, 'label': 'Education'},
    {'value': 5, 'label': 'Television'},
    {'value': 6, 'label': 'Birthday gift'},
  ];

  //select Category on change value
  selectCategoryOnChange(newValue) {
    selectCategory = newValue;
    notifyListeners();
  }
}
