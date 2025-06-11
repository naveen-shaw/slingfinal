import 'package:mpay/config.dart';

class ScanPayWidgets {
  Widget contactList(BuildContext context, List contactList) =>
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
              child: Row(
            children: contactList
                .map((e) => Column(children: [
                      Stack(children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("${e["icon"]}", fit: BoxFit.fill)
                            ]).quickExtension(context)
                      ])
                          .width(Sizes.s80)
                          .marginOnly(left: Sizes.s5, top: Sizes.s15),
                      TextWidgetCommon(
                        text: e["title"],
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.darkText),
                      ).marginOnly(top: Sizes.s5, right: Sizes.s15)
                    ]))
                .toList(),
          ).paddingSymmetric(horizontal: Sizes.s10)));

//qr scanner close,flash and qr scan button
  Widget topButtons(BuildContext context) {
    var scanCtrl = Provider.of<ScanPayProvider>(context);
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonMenuButton(
                  icon: Icons.close,
                  isIcon: true,
                  isBorder: false,
                  color: appColor(context).appTheme.gray.withOpacity(0.3),
                  iconColor: appColor(context).appTheme.white)
              .height(Sizes.s36)
              .width(Sizes.s36)
              .inkWell(onTap: () => route.pop(context))
              .paddingSymmetric(horizontal: Sizes.s20, vertical: Sizes.s50),
          Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CommonMenuButton(
                        icon: Icons.flash_on_sharp,
                        isIcon: true,
                        isBorder: false,
                        color: appColor(context).appTheme.gray.withOpacity(0.3),
                        iconColor: appColor(context).appTheme.white)
                    .inkWell(
                      onTap: () =>scanCtrl.flashOnTap()
                    )
                    .height(Sizes.s36)
                    .width(Sizes.s36)
                    .paddingSymmetric(vertical: Sizes.s50),
                CommonMenuButton(
                        icon: Icons.qr_code,
                        isIcon: true,
                        isBorder: false,
                        color: appColor(context).appTheme.gray.withOpacity(0.3),
                        iconColor: appColor(context).appTheme.white)
                    .height(Sizes.s36)
                    .width(Sizes.s36)
                    .paddingSymmetric(
                        horizontal: Sizes.s20, vertical: Sizes.s50)
              ])
        ]);
  }

//qrcode layout
  Widget qrCodeLayout(BuildContext context,
      GlobalKey<State<StatefulWidget>> qrKey, double scanArea) {
    var scanCtrl = Provider.of<ScanPayProvider>(context);
    return QRView(
      cameraFacing: CameraFacing.back,
      key: qrKey,
      onQRViewCreated: (controller) => scanCtrl.onQRViewCreated(controller),
      overlay: QrScannerOverlayShape(
          borderColor: appColor(context).appTheme.primary,
          overlayColor: appColor(context).appTheme.overlyColor.withOpacity(0.9),
          borderRadius: 10,
          borderLength: 20,
          borderWidth: 5,
          cutOutSize: scanArea),
    );
  }
}
