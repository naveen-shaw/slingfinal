import 'package:mpay/config.dart';

class SuccessFullyResetScreen extends StatelessWidget {
  const SuccessFullyResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: AuthBackgroundLayout(
                topText1: appFonts.successfullyReset,
                topText2: appFonts.hurryWeGotBack,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextWidgetCommon(
                              text: appFonts.yourPasswordHas,
                              textAlign: TextAlign.center,
                              style: AppCss.latoLight14.letterSpace(0.3).textColor(
                                  appColor(context).appTheme.lightText).textHeight(1.4))
                          .paddingOnly(bottom: Sizes.s30, top: Sizes.s30),
                      Expanded(
                          flex: 4,
                          child: Image.asset(eImageAssets.charFour,
                              fit: BoxFit.fill)),
                      Expanded(
                          child:
                              //successfully reset screen update password button layout
                              SRWidgets().srButtonLayout(context))
                    ]))));
  }
}
