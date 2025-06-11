import '../../../../../config.dart';

class ForgetPinScreen extends StatelessWidget {
  const ForgetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: AuthBackgroundLayout(
              topText1: appFonts.forgetYourPin,
              topText2: appFonts.doNotWorry,
              topImage: eImageAssets.charThree,
              isImage: true,
              top: Sizes.s35,
              child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                shrinkWrap: true,
                children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Forget pin To reset your password... layout
                        FSWidgets().fsTextLayout(context),
                        // Forget pin email or phoneNumber layout
                        FSWidgets().fsTextFiledLayout(context),
                        // Forget pin reset password button layout
                        FSWidgets().fsButtonLayout(context)
                      ]),
                    ],
              ))),
    );
  }
}
