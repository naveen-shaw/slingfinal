import '../../config.dart';

class AllCardsProvider extends ChangeNotifier{
  List allCards = [];
  TextEditingController addCardNumber = TextEditingController();
  TextEditingController expDate = TextEditingController();
  TextEditingController cvv = TextEditingController();
  dynamic chosenItem;
  // Initialize list
  init(){
    allCards = appArray.allCards;
    chosenItem = cardsDropDownItems[1]['value'];
    notifyListeners();
  }
  //select card  dropDown layout
  List cardsDropDownItems = [
    {'value': 1, 'label': 'Visa'},
    {'value': 2, 'label': 'Master Card'},
    {'value': 3, 'label': 'American Express'},
  ];
  //on change value
  dropDownOnChange(newValue){
    chosenItem = newValue;
    notifyListeners();
  }
}