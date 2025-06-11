import 'dart:developer';

import 'package:mpay/config.dart';

class ProfileScreenProvider extends ChangeNotifier {
  List profileList = [];

  dynamic data;
  dynamic eData;

  //list initialization
  init() {
    profileList = appArray.profileList;
    notifyListeners();
  }

  indexOnTap(context, index, e) {
    switch (index) {
      case 0:
        route.pushNamed(context, routeName.myProfileLayout, arg: {"title": e});
        break;
      case 1:
        route.pushNamed(context, routeName.allCardScreen);
        break;
      case 2:
        route.pushNamed(context, routeName.settingScreen);
        break;
      case 3:
        route.pushNamed(context, routeName.profileChangePassScreen);
        break;
      case 4:
        route.pushNamed(context, routeName.helpScreen);
        break;
      case 5:
        route.pushReplacementNamed(context, routeName.signInScreen);
        break;
    }
  }

  // get data
  getArgument(context) async {
    dynamic data = ModalRoute.of(context)!.settings.arguments;
    eData = data['title'];
    log("eData==>$eData");
    notifyListeners();
  }
}
