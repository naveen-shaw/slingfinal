import 'package:mpay/config.dart';

class CryptoExchangeWidgets {
  //exchange screen richText terms and conditions layout
  Widget exchangeRichText(context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "${language(context, appFonts.aTransactionFee)} ",
              style: AppCss.latoMedium12
                  .textColor(appColor(context).appTheme.lightText)),
          TextSpan(
              text: language(context, appFonts.termsAndConditions),
              style: AppCss.latoMedium12
                  .textColor(appColor(context).appTheme.primary)
                  .textHeight(1.3)),
          TextSpan(
              text: language(context, " ${appFonts.here}"),
              style: AppCss.latoMedium12
                  .textColor(appColor(context).appTheme.lightText))
        ])).width(Sizes.s210).center();
  }

//exchange screen exchange fee layout
  Widget exchangeFeeLayout(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(text: appFonts.exchangeFee).padding(bottom: Sizes.s8),
      Row(children: [
        Expanded(flex: 3, child: TextFiledCommon(hintText: appFonts.youSend)),
        HSpace(Sizes.s10),
        Expanded(
            flex: 2,
            child: TextFiledCommon(keyboardType: TextInputType.number,
                hintText: appFonts.amount,
                style: AppCss.latoMedium12
                    .textColor(appColor(context).appTheme.lightText)))
      ])
    ])
        .padding(vertical: Sizes.s20, horizontal: Sizes.s20)
        .lastPaidExtension(context)
        .padding(top: Sizes.s20, bottom: Sizes.s15);
  }

//exchange screen you send layout
  Widget exchangeYouSendLayout(
    context,
  ) {
    return Consumer<CryptoSendListProvider>(
        builder: (context, cryptoSendListCtrl, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(text: appFonts.youSend).padding(bottom: Sizes.s8),
        Row(children: [
          Expanded(child: TextFiledCommon(hintText: appFonts.youSend)),
          Container(
              height: Sizes.s5,
              width: 10,
              color: appColor(context).appTheme.gray.withOpacity(0.2)),
          Expanded(
              child: CommonDropDownMenu(
                  value: cryptoSendListCtrl.youSend,
                  onChanged: (value) =>
                      cryptoSendListCtrl.youSendOnChange(value),
                  hintText: appFonts.youSend,
                  itemsList: cryptoSendListCtrl.sendDropDownItems
                      .map((item) => DropdownMenuItem<dynamic>(
                          value: item['value'],
                          child: Row(children: [
                            SvgPicture.asset(item['icon'],
                                height: Sizes.s20, width: Sizes.s20),
                            HSpace(Sizes.s8),
                            TextWidgetCommon(text: item['label'])
                          ])))
                      .toList()))
        ])
      ])
          .padding(vertical: Sizes.s20, horizontal: Sizes.s20)
          .lastPaidExtension(context);
    });
  }

//exchange screen exchange container design
  Widget exchangeContainerDesign(context) {
    return Column(children: [
      Container(
              height: Sizes.s15,
              width: Sizes.s5,
              color: appColor(context).appTheme.gray.withOpacity(0.2))
          .center(),
      SvgPicture.asset(eSvgAssets.exchangeBG),
      Container(
              height: Sizes.s15,
              width: Sizes.s5,
              color: appColor(context).appTheme.gray.withOpacity(0.2))
          .center()
    ]);
  }

//exchange screen yo receive layout
  Widget exchangeYouReceiveLayout(context) {
    return Consumer<CryptoSendListProvider>(
        builder: (context, cryptoSendListCtrl, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(text: appFonts.youReceive).padding(bottom: Sizes.s8),
        Row(children: [
          Expanded(child: TextFiledCommon(hintText: appFonts.youReceive)),
          Container(
              height: Sizes.s5,
              width: Sizes.s10,
              color: appColor(context).appTheme.gray.withOpacity(0.2)),
          Expanded(
              child: Column(children: [
            CommonDropDownMenu(
                value: cryptoSendListCtrl.youReceive,
                onChanged: (newValue) =>
                    cryptoSendListCtrl.youReceiveOnChange(newValue),
                hintText: appFonts.youReceive,
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
          ]))
        ]),
        TextWidgetCommon(
                text: appFonts.exchangeETH,
                color: appColor(context).appTheme.primary)
            .center()
            .padding(top: Sizes.s12)
      ])
          .padding(vertical: Sizes.s20, horizontal: Sizes.s20)
          .lastPaidExtension(context);
    });
  }
}
