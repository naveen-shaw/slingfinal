import '../../../config.dart';

class CryptoWithdrawWidgets {
  //crypto screen withdraw screen details layout
  Widget withdrawDetails(
    context,
    HomeScreenProvider homeCtrl,
    CryptoSendListProvider cryptoSendListCtrl,
  ) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(text: appFonts.selectBankAc),
      CommonDropDownMenu(value:cryptoSendListCtrl.selectDigitalAsset,
              onChanged: (value) =>
                  cryptoSendListCtrl.selectDigitalAssetWithOnChange(value),
              hintText: appFonts.selectCard,
              itemsList: homeCtrl.dialogDropDownItems
                  .map((item) => DropdownMenuItem<dynamic>(
                      value: item['value'],
                      child: TextWidgetCommon(text: item['label'])))
                  .toList())
          .padding(vertical: Sizes.s8),
      Row(children: [
        TextWidgetCommon(
            text: "${language(context, appFonts.avaBal)} :",
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.lightText))
      ]),
      TextWidgetCommon(text: appFonts.iban)
          .padding(top: Sizes.s15, bottom: Sizes.s8),
      TextFiledCommon(hintText: appFonts.enterYourIBAN),
      TextWidgetCommon(text: appFonts.amount)
          .padding(top: Sizes.s15, bottom: Sizes.s8),
      Row(children: [
        Expanded(child: TextFiledCommon(hintText: appFonts.amount)),
        Container(
            height: 5,
            width: 10,
            color: appColor(context).appTheme.gray.withOpacity(0.2)),
        Expanded(
            child: CommonDropDownMenu(value:cryptoSendListCtrl.withDrawAmount,
                onChanged: (value) =>
                    cryptoSendListCtrl.withDrawAmountOnChange(value),
                hintText: appFonts.selectRecipientName,
                itemsList: cryptoSendListCtrl.sendDropDownItems
                    .map((item) => DropdownMenuItem<dynamic>(
                        value: item['value'],
                        child: Row(children: [
                          SvgPicture.asset(item['icon'],
                              width: Sizes.s20, height: Sizes.s20),
                          HSpace(Sizes.s8),
                          TextWidgetCommon(text: item['label'])
                        ])))
                    .toList()))
      ]),
      TextWidgetCommon(text: appFonts.pin)
          .padding(top: Sizes.s15, bottom: Sizes.s8),
      TextFiledCommon(hintText: appFonts.enterPin,keyboardType: TextInputType.number)
    ])
        .padding(horizontal: Sizes.s15, vertical: Sizes.s20)
        .lastPaidExtension(context)
        .padding(bottom: Sizes.s12);
  }

  //crypto screen withdraw screen successfully withdraw dialog screen
  withdrawDialogLayout(context) {
    return commonDialog(context, false,
        text: appFonts.successfullyWithdraw,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(eImageAssets.successFullyTransfer)
              .padding(bottom: Sizes.s20),
          TextWidgetCommon(
              textAlign: TextAlign.center,
              text: appFonts.theMoneyYouSuccessfully)
        ]);
  }
}
