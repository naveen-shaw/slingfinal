import 'package:mpay/config.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appColor(context).appTheme.screenBg,
          body: AuthBackgroundLayout(
              topText1: appFonts.createAnAccount,
              topText2: appFonts.fillUpTheForm,
              topImage: eImageAssets.signUpOne,
              isImage: true,
              top: Sizes.s45,
              child: ListView(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  shrinkWrap: true,
                  children: [
                Column(children: [
                  // signUp screen enter FullName,enter email,enter pin,confirm pin,I Agree To AllTerms & condition text & textFiled layout
                  const SignupTextFiledLayout(),
                  //SignUp button Layout
                  SignUpWidgets().signUpButtonLayout(context),
                  // Signup already have an account rich text
                  SignUpWidgets().signupRichTextLayout(context)
                ]),
              ]))),
    );
  }
}
