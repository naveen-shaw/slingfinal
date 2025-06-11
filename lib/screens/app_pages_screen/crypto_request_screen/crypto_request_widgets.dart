import '../../../config.dart';

class CryptoRequestWidget {
  //crypto screen request screen details layout
  Widget cryptoRequestDetails(
        BuildContext context) {
    return Consumer<CryptoSendListProvider>(
      builder: (context, cryptoSendListCtrl, child) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextWidgetCommon(text: appFonts.requestPayment),
          CommonDropDownMenu(
                  value: cryptoSendListCtrl.requestPayment,
                  onChanged: (value) =>
                      cryptoSendListCtrl.requestPaymentOnChange(value),
                  hintText: appFonts.selectRecipientName,
                  itemsList: cryptoSendListCtrl.sendDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: Row(children: [
                            SvgPicture.asset(item['icon'],
                                    width: Sizes.s20, height: Sizes.s20)
                                .padding(right: Sizes.s5),
                            TextWidgetCommon(text: item['label'])
                          ])))
                      .toList())
              .padding(top: Sizes.s8, bottom: Sizes.s5),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextWidgetCommon(
                text: "${language(context, appFonts.avaBal)} :",
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.lightText)),
            TextWidgetCommon(
                text:
                    "${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.recipientAmount)).toStringAsFixed(2)} USD",
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.primary))
          ]).padding(bottom: Sizes.s20),
          TextWidgetCommon(text: appFonts.contact),
          CommonDropDownMenu(
                  value: cryptoSendListCtrl.selectRecipientSecName,
                  onChanged: (value) =>
                      cryptoSendListCtrl.selectRecipientSecNameOnChange(value),
                  hintText: appFonts.selectRecipientName,
                  itemsList: cryptoSendListCtrl.recipientNameDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: TextWidgetCommon(text: item['label'])))
                      .toList())
              .padding(top: Sizes.s8, bottom: Sizes.s15),
          TextWidgetCommon(text: appFonts.address),
          TextFiledCommon(hintText: appFonts.writeHere).padding(top: Sizes.s8)
        ])
            .padding(horizontal: Sizes.s15, vertical: Sizes.s15)
            .lastPaidExtension(context);
      }
    );
  }

  //crypto screen request screen dialog layout
  cryptoReqDialogLayout(context) {
    return commonDialog(context, false,
        text: appFonts.sendRequest,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(eImageAssets.successFullyTransfer)
              .padding(bottom: Sizes.s20),
          TextWidgetCommon(
              text: appFonts.yourRequestWasSubmitted,
              textAlign: TextAlign.center)
        ]);
  }
}
