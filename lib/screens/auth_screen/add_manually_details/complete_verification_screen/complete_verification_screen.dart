import 'package:mpay/config.dart';

class CompleteVerificationScreen extends StatelessWidget {
  const CompleteVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appColor(context).appTheme.screenBg,
      body: AuthBackgroundLayout(
        topText1: appFonts.yourVerificationComplete,
        topText2: appFonts.hurrayYourInfo,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //Complete Verification  Enjoy managing your money... text layout

          CompletedVerificationWidgets()
              .cvTextLayout(context)
              .paddingOnly(top: Sizes.s30),
          Expanded(
            flex: 4,
            child: Image.asset(
              eImageAssets.charFour,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              child: //Complete Verification go to home button layout
                  CompletedVerificationWidgets().cvButtonLayout(context))
        ]),
      ),
    );
  }
}
