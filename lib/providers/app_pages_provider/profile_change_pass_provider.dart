

import '../../config.dart';

class ProfileChangePassProvider extends ChangeNotifier {
  bool isChange = false;

//profile change password ui change false
  changeFalse() {
    isChange = false;
    notifyListeners();
  }

//profile change password ui change true
  changeTrue() {
    isChange = true;
    notifyListeners();
  }

  // Update Password onTap dialog
  updatePassword(context) {
    var bottomCtrl = Provider.of<BottomNavigationProvider>(context,listen: false);
    commonDialog(context, false,
        text: appFonts.errorInChangingPassword,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(eImageAssets.errorInTransfer),
          TextWidgetCommon(
                  text: appFonts.weHaveOccurAnError,
                  textAlign: TextAlign.center)
              .padding(bottom: Sizes.s20, top: Sizes.s15),
          CommonAuthButton(text: appFonts.backToHome,onTap:() { route.pop(context); commonDialog(context, false,
    text: appFonts.passwordSuccessfullyChange,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Image.asset(eImageAssets.successFullyTransfer),
    TextWidgetCommon(
    textAlign: TextAlign.center,
    text: appFonts.hurreyyyYourPassword)
        .padding(bottom: Sizes.s20, top: Sizes.s15),
    CommonAuthButton(text: appFonts.backToHome,onTap: () => bottomCtrl.onTap(context))

    ]);

          })
        ]);
  }
}
