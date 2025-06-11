
import '../../../../../config.dart';

class ResetPinScreen extends StatelessWidget {
  const ResetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: AuthBackgroundLayout(
          topText1: appFonts.resetYourPin,
          topText2: appFonts.addNewOne,
          isImage: true,
          topImage: eImageAssets.charFive,
          top: Sizes.s38,
          child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            shrinkWrap: true,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                //reset your pin enter the new pin... text layout
                ResetPinWidgets().resetTextLayout(context),
                //reset your pin enter new pin and re-enter new pin text & textFiled layout
                ResetPinWidgets().resetTextFieldLayout(),
                //reset your pin update password button & signIn layout
                ResetPinWidgets().resetButtonLayout(context),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
