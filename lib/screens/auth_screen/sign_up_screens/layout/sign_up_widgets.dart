import '../../../../../config.dart';

class SignUpWidgets {
//SignUp button Layout
  Widget signUpButtonLayout(BuildContext context) =>
      CommonAuthButton(text: appFonts.signup)
          .padding(vertical: Sizes.s10)
          .inkWell(
              onTap: () =>
                  route.pushNamed(context, routeName.personalIdentityScreen));

  // Signup already have an account rich text
  Widget signupRichTextLayout(BuildContext context) => SignInSingUpRichText(
        lightText: language(context, appFonts.alreadyHaveAnAccount),
        primaryText: language(context, appFonts.signIn),
      onTap: () => route.pushReplacementNamed(context, routeName.signInScreen),
      ).padding(bottom: Sizes.s20);
}
