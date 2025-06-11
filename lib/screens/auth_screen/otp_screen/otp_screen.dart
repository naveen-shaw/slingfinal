
import '../../../../../config.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: AuthBackgroundLayout(
            topText1: appFonts.oTPVerification,
            topText2: appFonts.enterCode,
            topImage: eImageAssets.charTwo,
            isImage: true,
            top: Sizes.s35,
            child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Otp screen Enter the 4-digit number... text layout
                    OTPWidgets().otpTextLayout(context),
                    // Otp screen enter Otp layout
                    OTPWidgets().otpTextFiledLayout(),
                    // Otp screen verify button ,Haven’t received yet? Resend it text layout
                    OTPWidgets().otpButtonRichTextLayout(context),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
