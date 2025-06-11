import '../../../../config.dart';

//crypto screen buy and sell history layout
class BuyAndSellHistoryLayout extends StatelessWidget {
  const BuyAndSellHistoryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var cryptoCtrl = Provider.of<CryptoProvider>(context);
    return Column(children: [
      CommonTitleText(
              title: appFonts.buyAndSellHistory,
              onTap: () =>
                  route.pushNamed(context, routeName.cryptoBuySellScreen))
          .padding(top: Sizes.s20, bottom: Sizes.s18),
      ...cryptoCtrl.buyAndSellHistory
          .map((e) =>
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(children: [
                  SvgPicture.asset(e['icon']),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgetCommon(text: e["title"]),
                        VSpace(Sizes.s4),
                        TextWidgetCommon(
                            text: e["subTitle"],
                            color: appColor(context).appTheme.lightText)
                      ]).padding(horizontal: Sizes.s12)
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  TextWidgetCommon(style: AppCss.latoBold16.textColor(appColor(context).appTheme.darkText),
                      text:
                          "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e["price"])).toStringAsFixed(2)}"),
                  VSpace(Sizes.s4),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: language(context, e["per"]),
                        style: AppCss.latoMedium14.textColor(
                            e['per'].toString().contains("-")
                                ? appColor(context).appTheme.red
                                : appColor(context).appTheme.green)),
                    TextSpan(
                        text: language(context, appFonts.hours),
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText))
                  ]))
                ])
              ])
                  .padding(horizontal: Sizes.s15, vertical: Sizes.s15)
                  .transactionExtension(context: context)
                  .padding(bottom: Sizes.s15))
          .toList()
    ]);
  }
}
