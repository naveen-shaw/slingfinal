
import 'package:mpay/config.dart';

class HelpScreenProvider extends ChangeNotifier {
  List helpList = [];

  int selected = 0;
  int selectedTile = -2;

  //list initialization
  init() {
    helpList = appArray.helpList;
    notifyListeners();
  }

//expansion Tile OnTap
  expansionOnTap(value, index) {
    if (value) {
      selectedTile = index;
      notifyListeners();
    } else {
      selectedTile = -1;
      notifyListeners();
    }
    selected = index;
    notifyListeners();
  }
}
