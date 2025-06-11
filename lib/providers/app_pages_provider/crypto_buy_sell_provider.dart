import 'package:mpay/config.dart';

class CryptoBuyAndSellProvider extends ChangeNotifier {
  List buyAndSellHistoryScreen = [];

  //Initialize list
  init() {
    buyAndSellHistoryScreen = appArray.buyAndSellHistoryScreen;
    notifyListeners();
  }
//buy and sell screen setting On tap
  settingOnTap(context) {
    NavigationBarWidgets().showPopupMenu(context, items: [
      menuItems(appFonts.mostRecent,context),
      menuDivider(context),
      menuItems(appFonts.lastMonth,context),
      menuDivider(context),
      menuItems(appFonts.custom,context,onTap: () => BuyAndSellWidgets().selectDateDialog(context)),
      menuDivider(context),
      menuItems(appFonts.removeAll,context)
    ]);
  }


}
