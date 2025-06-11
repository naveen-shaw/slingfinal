import 'package:flutter/services.dart';
import 'package:mpay/config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<SignInProvider, ThemeService>(
      builder: (context1, signInCtrl, themCtrl, child) {
        return DirectionalityRtl(
          child: PopScope(
            canPop: false,
            onPopInvoked: (didPop) => SystemNavigator.pop(),
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: appColor(context).appTheme.screenBg,
                body: AuthBackgroundLayout(
                  topText1: appFonts.welcome,
                  topText2: appFonts.fillUp,
                  isImage: true,
                  topImage: eImageAssets.firstSignIn,
                  top: Sizes.s40,
                  child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    shrinkWrap: true,
                    children: [
                          Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(children: [
                              //signIn Screen enter email,enter pim,rememberMe,forgetPin layout
                              const SignInTextFiledLayout(),
                              //SignIn screen signIn button layout
                              SignInWidgets().signInButton(context),
                              // SignIn screen Don't have an any account ? signup text layout
                              SignInWidgets().sigInRichText(context),
                            ]),
                            // signIn screen divider layout
                            SignInWidgets().signInDivider(context),
                            // signIn screen login with google & login with facebook button layout
                            SignInWidgets().signInGoogleButton(context)
                          ]),
                        ],
                  ),
                )),
          ),
        );
      },
    );
  }
}
