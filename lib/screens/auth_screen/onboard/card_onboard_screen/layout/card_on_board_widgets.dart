import 'package:mpay/config.dart';

class CardOnBoardWidgets {
  //top add account Board  animation Layout
  Widget topBoardLayout(ThemeService themeCtrl) =>
      Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
                width: Sizes.s248,
                height: Sizes.s157,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(themeCtrl.isDarkMode
                            ? eImageAssets.addAccountDark
                            : eImageAssets.addAccount),
                        fit: BoxFit.fill)))
            .center()

      ]);

//bottom Manage your finance in... Text,signIn,SignUp Buttons layout
  Widget bottomLayout(BuildContext context) =>
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        TextWidgetCommon(
                textAlign: TextAlign.center,
                text: appFonts.manageYourFinance,
                style: AppCss.latoRegular14
                    .textColor(appColor(context).appTheme.lightText)
                    .textHeight(1.4))
            .padding(horizontal: Sizes.s50, vertical: Sizes.s20),
        CommonAuthButton(text: appFonts.signIn)
            .paddingSymmetric(vertical: Sizes.s10, horizontal: Sizes.s20)
            .inkWell(
                onTap: () => route.pushNamed(context, routeName.signInScreen)),
        CommonAuthButton(
                text: appFonts.signup,
                gradient:
                    LinearGradient(colors: [appTheme.trans, appTheme.trans]),
                textColor: appColor(context).appTheme.lightText)
            .paddingSymmetric(horizontal: Sizes.s20)
            .paddingOnly(bottom: Sizes.s20)
            .inkWell(
                onTap: () => route.pushNamed(context, routeName.signupScreen))
      ]);
}
