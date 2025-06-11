


import '../../../../../config.dart';

class SetPinScreen extends StatelessWidget {
  const SetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
        backgroundColor: appColor(context).appTheme.screenBg,
        resizeToAvoidBottomInset: false,
        body: AuthBackgroundLayout(
            topText1: appFonts.setYourPIN,
            topText2: appFonts.useItWhileEntering,
            topImage: eImageAssets.pin,
            isImage: true,
            top: Sizes.s35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //set pin layout pin ,confirm pin text & textFiled layout
                const SPTextFiledLayout(),
                // set pin screen save button layout
                SetPinWidgets().spButtonLayout(context)
              ],
            )),
      ),
    );
  }
}
