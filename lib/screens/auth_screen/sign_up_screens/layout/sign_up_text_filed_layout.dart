import '../../../../../config.dart';

class SignupTextFiledLayout extends StatelessWidget {
  const SignupTextFiledLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final signupCtrl = Provider.of<SignUpScreenProvider>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(text: appFonts.fullName).paddingOnly(top: Sizes.s25),
      TextFiledCommon(hintText: appFonts.enterFullName)
          .padding(top: Sizes.s10,bottom: Sizes.s18),
      TextWidgetCommon(
        text: appFonts.emailId
      ),
      TextFiledCommon(hintText: appFonts.enterYourEmail)
          .padding(top: Sizes.s10,bottom: Sizes.s18),
      TextWidgetCommon(text: appFonts.pin),
      TextFiledCommon(
        hintText: appFonts.enterPin,
        keyboardType: TextInputType.number,
      ) .padding(top: Sizes.s10,bottom: Sizes.s18),
      TextWidgetCommon(
        text: appFonts.confirmPin,
      ),
      TextFiledCommon(
              hintText: appFonts.enterDigitPinAgain,
              keyboardType: TextInputType.number)
          .padding(top: Sizes.s10,bottom: Sizes.s18),
      Row(children: [
        CheckBoxCommon(
            isCheck: signupCtrl.isCheck,
            onTap: () => signupCtrl.isCheckBoxCheck(!signupCtrl.isCheck)),
        HSpace(Sizes.s8),
        TextWidgetCommon(text: appFonts.iAgreeToAllTerms)
      ]).paddingOnly(bottom: Sizes.s30),
    ]);
  }
}
