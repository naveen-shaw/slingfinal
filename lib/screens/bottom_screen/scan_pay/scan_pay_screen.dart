import 'package:mpay/config.dart';

class ScanPayScreen extends StatelessWidget {
  const ScanPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 300.0;
    return Consumer<ScanPayProvider>(builder: (context1, scanCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => scanCtrl.init()),
          child: DirectionalityRtl(
            child: Scaffold(
                backgroundColor: appColor(context).appTheme.screenBg,
                body: Column(children: [
                  Expanded(
                      flex: 5,
                      child: Stack(children: [
                        //qrcode layout
                        ScanPayWidgets().qrCodeLayout(context, scanCtrl.qrKey,
                             scanArea),
                        //qr scanner close,flash and qr scan button
                        ScanPayWidgets().topButtons(context)
                      ])),
                  Column(children: [
                    CommonAuthButton(text: appFonts.uploadFromGallery),
                    TextFiledCommon(
                            isIcon: false,
                            imageIcon: eSvgAssets.contact,
                            hintText: appFonts.searchContact)
                        .paddingSymmetric(vertical: Sizes.s20),
                    ScanPayWidgets().contactList(context, scanCtrl.contactList)
                  ]).padding(
                      horizontal: Sizes.s20, top: Sizes.s20, bottom: Sizes.s15)
                ])),
          ));
    });
  }
}
