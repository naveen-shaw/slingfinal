import '../../../../../config.dart';

//signIn Screen enter email,enter pim,rememberMe,forgetPin layout
class SignInTextFiledLayout extends StatelessWidget {
  const SignInTextFiledLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final signInCtrl = Provider.of<SignInProvider>(context);
    Provider.of<ThemeService>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(text: appFonts.emailId).paddingOnly(top: Sizes.s30),
      TextFiledCommon(hintText: appFonts.enterYourMail)
          .padding(bottom: Sizes.s18,top: Sizes.s8),
      TextWidgetCommon(text: appFonts.pin),
      TextFiledCommon(hintText: appFonts.enterPin,keyboardType: TextInputType.number)
          .paddingSymmetric(vertical: Sizes.s8),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          CheckBoxCommon(
              isCheck: signInCtrl.isCheck,
              onTap: () => signInCtrl.isCheckBoxCheck(!signInCtrl.isCheck)),
          HSpace(Sizes.s8),
          TextWidgetCommon(
              text: appFonts.rememberMe,
              style: AppCss.latoLight12
                  .textColor(appColor(context).appTheme.lightText))
        ]),
        TextWidgetCommon(
                text: appFonts.forgetPin,
                style: AppCss.latoLight12
                    .textColor(appColor(context).appTheme.primary))
            .inkWell(onTap: () => route.pushNamed(context, routeName.otpScreen))
      ]).paddingOnly(bottom: Sizes.s30)
    ]);
  }
}
