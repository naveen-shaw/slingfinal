import 'package:flutter/cupertino.dart';

import '../../../../../../config.dart';

class SPTextFiledLayout extends StatelessWidget {
  const SPTextFiledLayout({super.key});

//set pin layout pin ,confirm pin text & textFiled layout
  @override
  Widget build(BuildContext context) {
    final setPinCtrl = Provider.of<SetPinProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: appFonts.pin,
        ).paddingOnly(top: Sizes.s30),
        TextFiledCommon(
          keyboardType: TextInputType.number,
          obscureText: setPinCtrl.showPin,
          hintText: appFonts.enterPin,
          isIcon: true,
          icon: IconButton(
              onPressed: () => setPinCtrl.onShowPin(),
              icon: setPinCtrl.showPin
                  ? const Icon(CupertinoIcons.eye_slash)
                  : const Icon(CupertinoIcons.eye),
              color: appColor(context).appTheme.gray.withOpacity(0.6)),
        ).paddingSymmetric(vertical: Sizes.s10),
        TextWidgetCommon(text: appFonts.confirmPin),
        TextFiledCommon(
          keyboardType: TextInputType.number,
          hintText: appFonts.enterConfirmPin,
          obscureText: setPinCtrl.showConfirmPin,
          isIcon: true,
          icon: IconButton(
              onPressed: () => setPinCtrl.onShowConfirmPin(),
              icon: setPinCtrl.showConfirmPin
                  ? const Icon(CupertinoIcons.eye_slash)
                  : const Icon(CupertinoIcons.eye),
              color: appColor(context).appTheme.gray.withOpacity(0.6)),
        ).paddingSymmetric(vertical: Sizes.s10),
      ],
    );
  }
}
