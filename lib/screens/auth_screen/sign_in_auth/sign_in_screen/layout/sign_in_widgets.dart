import '../../../../../config.dart';

class SignInWidgets {
  //SignIn screen signIn button layout
  Widget signInButton(context) => CommonAuthButton(text: appFonts.signIn)
      .padding(bottom: Sizes.s15)
      .inkWell(
          onTap: () => route.pushNamed(context, routeName.bottomBarLayout));

  // SignIn screen Don't have an any account ? signup text layout
  Widget sigInRichText(context) => SignInSingUpRichText(
              lightText: language(context, appFonts.doNotHave),
              primaryText: language(context, appFonts.signup))
          .inkWell(
        onTap: () => route.pushNamed(context, routeName.signupScreen),
      );

  // signIn screen divider layout
  Widget signInDivider(context) => Stack(children: [
        Divider(color: appColor(context).appTheme.dividerColor),
        Container(
                height: Sizes.s20,
                width: Sizes.s45,
                color: appColor(context).appTheme.screenBg,
                child: TextWidgetCommon(
                        text: appFonts.or,
                        style: AppCss.latoMedium16
                            .textColor(appColor(context).appTheme.lightText))
                    .center())
            .center()
      ]).padding(vertical: Sizes.s30);

  // signIn screen login with google & login with facebook button layout
  Widget signInGoogleButton(context) => Column(
        children: [
          CommonButton(
              image: eSvgAssets.google,
              text: appFonts.continueWithGoogle,
              textColor: appColor(context).appTheme.darkText,
              color: appColor(context).appTheme.gray.withOpacity(0.1)),
          CommonButton(
                  image: eSvgAssets.facebook,
                  text: appFonts.continueWithFacebook,
                  textColor: appColor(context).appTheme.darkText,
                  color: appColor(context).appTheme.gray.withOpacity(0.1))
              .padding(top: Sizes.s10)
        ],
      );
}
