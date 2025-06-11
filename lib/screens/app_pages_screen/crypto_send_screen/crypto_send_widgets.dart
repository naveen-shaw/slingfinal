import '../../../config.dart';

class CryptoSendWidgets {
//crypto screen send screen select digital assets dropdown,amount dropdown layout
  Widget selectDigitalAssets(
      BuildContext context  ) {
    return Consumer<CryptoSendListProvider>(
      builder: (context, cryptoSendListCtrl, child)  {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextWidgetCommon(text: appFonts.selectDigitalAsset),
          CommonDropDownMenu(
                  value: cryptoSendListCtrl.selectDigitalAsset,
                  onChanged: (value) =>
                      cryptoSendListCtrl.selectDigitalAssetOnChange(value),
                  hintText: appFonts.selectDigitalAsset,
                  itemsList: cryptoSendListCtrl.sendDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: Row(children: [
                            SvgPicture.asset(item['icon'],
                                height: Sizes.s20, width: Sizes.s20),
                            HSpace(Sizes.s8),
                            TextWidgetCommon(text: item['label'])
                          ])))
                      .toList())
              .padding(vertical: Sizes.s8),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextWidgetCommon(
                text: "${language(context, appFonts.avaBal)} :",
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.lightText)),
            TextWidgetCommon(
                text:
                    "${getSymbol(context)} ${(currency(context).currencyVal * double.parse(appFonts.ethBalance)).toStringAsFixed(2)} ETH",
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.primary))
          ]).padding(bottom: Sizes.s10),
          TextWidgetCommon(text: appFonts.amount),
          CommonDropDownMenu(
                  value: cryptoSendListCtrl.selectAmount,
                  onChanged: (value) =>
                      cryptoSendListCtrl.selectAmountOnChange(value),
                  hintText: appFonts.selectAmount,
                  itemsList: cryptoSendListCtrl.sendAmountDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: Row(children: [
                            SvgPicture.asset(item['icon'],
                                height: Sizes.s20, width: Sizes.s20),
                            HSpace(Sizes.s8),
                            TextWidgetCommon(text: item['label'])
                          ])))
                      .toList())
              .padding(vertical: Sizes.s8),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextWidgetCommon(
                text: "${language(context, appFonts.avaBal)} :",
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.lightText)),
            TextWidgetCommon(
                text:
                    "${getSymbol(context)} ${(currency(context).currencyVal * double.parse(appFonts.btcBalance)).toStringAsFixed(2)} BTC",
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.primary))
          ])
        ])
            .padding(vertical: Sizes.s20, horizontal: Sizes.s15)
            .lastPaidExtension(context)
            .padding(bottom: Sizes.s15);
      }
    );
  }

  //crypto screen send screen recipient name, recipient address, note layout
  Widget recipientLayout(
    context,
  ) {
    var cryptoSendListCtrl = Provider.of<CryptoSendListProvider>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(text: appFonts.recipientName),
      CommonDropDownMenu(
              value: cryptoSendListCtrl.selectRecipientName,
              onChanged: (value) =>
                  cryptoSendListCtrl.selectRecipientNameOnChange(value),
              hintText: appFonts.selectRecipientName,
              itemsList: cryptoSendListCtrl.recipientNameDropDownItems
                  .map((item) => DropdownMenuItem<dynamic>(
                      value: item['value'],
                      child: TextWidgetCommon(text: item['label'])))
                  .toList())
          .padding(top: Sizes.s8, bottom: Sizes.s20),
      TextWidgetCommon(text: appFonts.recipientAddress),
      TextFiledCommon(
              hintText: appFonts.writeHere,
              controller: cryptoSendListCtrl.addCtrl)
          .padding(top: Sizes.s8, bottom: Sizes.s15),
      TextWidgetCommon(text: appFonts.note),
      TextFiledCommon(hintText: appFonts.writeHere).padding(top: Sizes.s8)
    ])
        .padding(horizontal: Sizes.s15, vertical: Sizes.s15)
        .lastPaidExtension(context);
  }
//crypto send dialog layout
  cryptoSendDialog(context) {
    return commonDialog(context, false,
        text: appFonts.successfullySendAsset,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(eImageAssets.successFullyTransfer)
              .padding(bottom: Sizes.s20),
          TextWidgetCommon(
              textAlign: TextAlign.center, text: appFonts.yourDigitalAssetHas)
        ]);
  }
}
