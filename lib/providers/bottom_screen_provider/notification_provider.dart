import '../../config.dart';

class NotificationProvider extends ChangeNotifier {
  List notificationList = [];
  List receiveMoneyList = [];

//init list
  init() {
    notificationList = appArray.notificationList;
    receiveMoneyList = appArray.receiveMoneyList;
    notifyListeners();
  }

//duration change navigation
  navigator(context) {
    Future.delayed(DurationClass.s3).then((value) =>
        route.pushReplacementNamed(context, routeName.notificationScreen));
  }

//trash onTap dialog layout
  trashOnTap(context) {
    var bottomCtrl =
        Provider.of<BottomNavigationProvider>(context, listen: false);
    commonDialog(context, true,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(eImageAssets.cardsRemove, fit: BoxFit.fill),
          TextWidgetCommon(
            text: appFonts.areYouSureYou,
            textAlign: TextAlign.center,
          ).padding(bottom: Sizes.s20, top: Sizes.s15),
          CommonAuthButton(
            text: appFonts.deleteCard,
            onTap: () {
              route.pop(context);
              commonDialog(context, false,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  text: appFonts.successfullyDelete,
                  children: [
                    Image.asset(eImageAssets.successFullyTransfer,
                            fit: BoxFit.scaleDown)
                        .padding(horizontal: Sizes.s50),
                    TextWidgetCommon(
                            text: appFonts.successFullyDeleteThis,
                            textAlign: TextAlign.center)
                        .padding(top: Sizes.s30, bottom: Sizes.s30),
                    CommonAuthButton(
                        text: appFonts.backToHome,
                        onTap: () {
                          route.pop(context);
                          bottomCtrl.onTap(context);
                        })
                  ]);
            },
          )
        ]);
  }
}
