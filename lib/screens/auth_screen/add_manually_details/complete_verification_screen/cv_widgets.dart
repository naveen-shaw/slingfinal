import '../../../../../config.dart';

class CompletedVerificationWidgets {
  //Complete Verification  Enjoy managing your money... text layout
  Widget cvTextLayout(BuildContext context) => TextWidgetCommon(
          textAlign: TextAlign.center,
          text: appFonts.enjoyManaging,
          style: AppCss.latoMedium14
              .textColor(appColor(context).appTheme.lightText))
      .paddingOnly(bottom: Sizes.s20);

  //Complete Verification go to home button layout
  Widget cvButtonLayout(BuildContext context) =>
      CommonAuthButton(text: appFonts.goToHome)
          .padding(top: Sizes.s10, bottom: Sizes.s15)
          .inkWell(
              onTap: () =>
                  route.pushReplacementNamed(context, routeName.signInScreen));
}
