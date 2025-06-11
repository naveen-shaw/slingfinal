import '../../../../config.dart';

class FSWidgets {
  // Forget pin To reset your password... layout
  Widget fsTextLayout(context) => TextWidgetCommon(
          text: appFonts.toResetYour,
          style: AppCss.latoLight14
              .textColor(appColor(context).appTheme.lightText)
              .textHeight(1.4))
      .paddingOnly(bottom: Sizes.s20, top: Sizes.s40);

  // Forget pin email or phoneNumber layout
  Widget fsTextFiledLayout(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(text: appFonts.emailOrPhone),
          TextFiledCommon(hintText: appFonts.enterEmailOrPhone)
              .padding(vertical: Sizes.s10, bottom: Sizes.s60)
        ],
      );

  // Forget pin reset password button layout
  Widget fsButtonLayout(context) => Column(
        children: [
          CommonAuthButton(text: appFonts.resetPassword)
              .inkWell(
                  onTap: () =>
                      route.pushNamed(context, routeName.resetPinScreen))
              .padding(top: Sizes.s10, bottom: Sizes.s20),
          TextWidgetCommon(
                  text: appFonts.signIn,
                  style: AppCss.latoMedium16.textColor(appTheme.primary))
              .center()
              .inkWell(
                  onTap: () => route.pushReplacementNamed(
                      context, routeName.signInScreen))
        ],
      );
}
