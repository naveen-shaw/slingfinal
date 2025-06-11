import '../../config.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentTab = 0;
  List drawerList = [];
  List bottomNavigationBarList = [];
  GlobalKey<ScaffoldState> bottomNavScaffoldKey = GlobalKey<ScaffoldState>();

  //tab screens list
  final List<Widget> screens = [
    const HomeScreen(),
    const CryptoScreen(),
    const InsightScreen(),
    const ProfileScreen(),
  ];

//drawer index on taps screen
  drawerOnTap(int key, context) {
    switch (key) {
      case 0:
        route.pop(context);
        currentTab = 0;
        notifyListeners();
        break;
      case 1:
        route.pop(context);
        currentTab = 2;
        notifyListeners();
        break;
      case 2:
        route.pop(context);
        route.pushNamed(context, routeName.allCardScreen);
        break;
      case 3:
        route.pop(context);
        route.pushNamed(context, routeName.notificationScreen);
        break;
      case 4:
        route.pop(context);
        currentTab = 3;
        notifyListeners();
        break;
      case 5:
        route.pop(context);
        route.pushNamed(context, routeName.settingScreen);
        break;
      case 6:
        route.pop(context);
        route.pushNamed(context, routeName.noInternetScreen);
        break;
      case 7:
        route.pop(context);
        route.pushReplacementNamed(context, routeName.signInScreen);
        break;
    }
  }

  // Initialize list
  onInit() {
    drawerList = appArray.drawerList;
    bottomNavigationBarList = appArray.bottomNavigationBarList;
    notifyListeners();
  }

//navigation tab change
  tabChange(int index) {
    currentTab = index;
    notifyListeners();
  }

//PayList onTap method
  onTap(context) {
    route.pop(context);
    route.pop(context);

    notifyListeners();
  } //PayList onTap method
}
