import 'package:mpay/config.dart';
import 'layout/kyc_info_layout.dart';

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
              // KYC Document Information
              const KYCInfoLayout(),
              // Document Upload Section
              ConfirmIdentityWidgets()
                  .ciCameraLayout(context)
                  .paddingOnly(top: Sizes.s30, bottom: Sizes.s50),
              // Submit Button
              ConfirmIdentityWidgets().ciBottomButtonLayout(context)
            ],
          ),
        ),
      ),
    );
  }
}
