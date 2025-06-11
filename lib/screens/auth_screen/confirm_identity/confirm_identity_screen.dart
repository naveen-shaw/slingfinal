import 'package:mpay/config.dart';

class ConfirmIdentityScreen extends StatelessWidget {
  const ConfirmIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
        backgroundColor: appColor(context).appTheme.screenBg,
        body: AuthBackgroundLayout(
          topText1: appFonts.confirmIdentity,
          topText2: appFonts.submitYourDocsVerify,
          right: Sizes.s5,
          isImage: true,
          topImage: eImageAssets.signUp,
          height: Sizes.s205,
          top: Sizes.s70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // confirmIdentity screen camara and add id's layout
              ConfirmIdentityWidgets()
                  .ciCameraLayout(context)
                  .paddingOnly(top: Sizes.s30, bottom: Sizes.s50),
              // ConfirmIdentity Submit all button layout
              ConfirmIdentityWidgets().ciBottomButtonLayout(context)
            ],
          ),
        ),
      ),
    );
  }
}
