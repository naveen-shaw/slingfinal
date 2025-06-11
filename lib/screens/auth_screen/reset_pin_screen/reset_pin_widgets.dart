import '../../../../config.dart';

class ResetPinWidgets {
  //reset your pin enter the new pin... text layout
  Widget resetTextLayout(context) => TextWidgetCommon(
          text: appFonts.enterTheNewPin,
          style: AppCss.latoLight14.letterSpace(0.3)
              .textColor(appColor(context).appTheme.lightText)
              .textHeight(1.4))
      .paddingOnly(top: Sizes.s40, bottom: Sizes.s20);

  //reset your pin update password button & signIn layout
  Widget resetButtonLayout(context) => Column(
        children: [
          CommonAuthButton(text: appFonts.updatePassword)
              .inkWell(
                  onTap: () => route.pushNamed(
                      context, routeName.successFullyResetScreen))
              .padding(top: Sizes.s10, bottom: Sizes.s20),
          TextWidgetCommon(
            text: appFonts.signIn,
            style: AppCss.latoMedium16.textColor(appTheme.primary),
          ).center().inkWell(onTap: () => route.pushReplacementNamed(context, routeName.signInScreen))
        ],
      );

  //reset your pin enter new pin and re-enter new pin text & textFiled layout
  Widget resetTextFieldLayout() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(text: appFonts.enterNewPin),
          TextFiledCommon(hintText: appFonts.enterNewPin,keyboardType: TextInputType.number)
              .padding(bottom: Sizes.s18,top: Sizes.s8),
          TextWidgetCommon(text: appFonts.reEnterNewPin),
          TextFiledCommon(hintText: appFonts.reEnterNewPin,keyboardType: TextInputType.number)
              .padding(top: Sizes.s10, bottom: Sizes.s60)
        ],
      );
}
