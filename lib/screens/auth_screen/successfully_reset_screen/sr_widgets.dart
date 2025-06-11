import '../../../../config.dart';

class SRWidgets {
//successfully reset screen update password button layout
  Widget srButtonLayout(context) => CommonAuthButton(text: appFonts.signInAgain)
      .padding(top: Sizes.s10, bottom: Sizes.s15)
      .inkWell(
        onTap: () => route.pushReplacementNamed(context, routeName.signInScreen),
      );

//successfully reset screen your password layout
  Widget srTextLayout(context) => TextWidgetCommon(
          textAlign: TextAlign.center,
          text: appFonts.yourPasswordHas,
          style: AppCss.latoMedium16.textColor(appTheme.lightText))
      .paddingOnly(bottom: Sizes.s20);
}
