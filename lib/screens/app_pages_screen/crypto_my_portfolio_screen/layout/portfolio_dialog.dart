import 'dart:developer';

import '../../../../config.dart';

addCurrencyDialog(context) {
  return commonDialog(context, false,
      text: appFonts.currencyBuySell,
      children: [
        Consumer<CryptoMyPortfolioProvider>(
            builder: (context1, cryptoCtrl, child) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: cryptoCtrl.buyCurrencyTitle
                  .asMap()
                  .entries
                  .map((e) => Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidgetCommon(
                                  text:
                                      "${language(context, e.value)} ${language(context, appFonts.currency)}"),
                              Radio(
                                  value: e.value,
                                  activeColor:
                                      appColor(context).appTheme.radioGrayColor,
                                  fillColor: MaterialStatePropertyAll(
                                      cryptoCtrl.selectedCurrencyOption ==
                                              '${e.value}'
                                          ? appColor(context).appTheme.primary
                                          : appColor(context)
                                              .appTheme
                                              .radioGrayColor),
                                  groupValue: cryptoCtrl.selectedCurrencyOption,
                                  onChanged: (value) {
                                    log("message==>$value");
                                    cryptoCtrl.radioValueChange(value);
                                  })
                            ]).inkWell(
                            onTap: () => cryptoCtrl.radioValueChange(e.value)),
                        if (e.key == 0)
                          Divider(
                                  height: 0,
                                  color:
                                      appColor(context).appTheme.dividerColor)
                              .padding(vertical: Sizes.s20),
                        if (e.key != cryptoCtrl.buyCurrencyTitle.length - 2)
                          CommonAuthButton(
                                  onTap: () {
                                    route.pop(context);
                                    cryptoCtrl.buySellOnTap(e.value, context);//buy and sell dialog button dialog layout
                                  },
                                  text:
                                      '${language(context, cryptoCtrl.selectedCurrencyOption)} ${language(context, appFonts.currency)}')
                              .paddingOnly(top: Sizes.s30)
                      ]))
                  .toList());
        }),
      ]);
}
