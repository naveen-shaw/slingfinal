import '../../../../config.dart';

class OTPWidgets {
  // Otp screen Enter the 4-digit number... text layout
  Widget otpTextLayout(context) => TextWidgetCommon(
          text: appFonts.enterThe,
          style: AppCss.latoLight14
              .letterSpace(0.3)
              .textColor(appColor(context).appTheme.lightText)
              .textHeight(1.4))
      .paddingOnly(bottom: Sizes.s20, top: Sizes.s40);

  // Otp screen enter Otp layout
  Widget otpTextFiledLayout() =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(text: appFonts.otp),
        TextFiledCommon(hintText: appFonts.enterOtp,keyboardType: TextInputType.number)
            .paddingOnly(top: Sizes.s10, bottom: Sizes.s70)
      ]);

// Otp screen verify button ,Haven’t received yet? Resend it text layout
  Widget otpButtonRichTextLayout(context) => Column(children: [
        CommonAuthButton(text: appFonts.verify)
            .inkWell(
                onTap: () => route.pushNamed(context, routeName.forgetScreen))
            .padding(top: Sizes.s10, bottom: Sizes.s20),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: language(context, appFonts.haveNotReceived),
                  style: AppCss.latoMedium16
                      .textColor(appColor(context).appTheme.lightText)),
              TextSpan(
                  text: language(context, appFonts.resendIt),
                  style: AppCss.latoMedium16
                      .textColor(appColor(context).appTheme.primary))
            ])).center()
      ]);
}
