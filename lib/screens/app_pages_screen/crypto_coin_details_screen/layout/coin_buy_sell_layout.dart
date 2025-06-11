import 'package:mpay/config.dart';

class CoinBuyAndSellLayout extends StatelessWidget {
  final CryptoCoinDetailsProvider coinCtrl;

  const CoinBuyAndSellLayout(this.coinCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(
              text: appFonts.buyAndSellHistory,
              style: AppCss.latoMedium18
                  .textColor(appColor(context).appTheme.darkText))
          .padding(top: Sizes.s25, bottom: Sizes.s18),
      Column(
          children: coinCtrl.coinBuySellHistory
              .map((e) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          SvgPicture.asset(e['icon']),
                          HSpace(Sizes.s12),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidgetCommon(
                                    text: e['title'],
                                    style: AppCss.latoLight16.textColor(
                                        appColor(context).appTheme.darkText)),
                                VSpace(Sizes.s6),
                                TextWidgetCommon(
                                    text: e['buy&sellID'],
                                    style: AppCss.latoMedium14.textColor(
                                        appColor(context).appTheme.lightText))
                              ])
                        ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextWidgetCommon(
                                  text:'${getSymbol(context)}${(currency(context).currencyVal * double.parse( e['price'])).toStringAsFixed(2)}',
                                  style: AppCss.latoSemiBold16.textColor(
                                      appColor(context).appTheme.darkText)),
                              VSpace(Sizes.s6),
                              TextWidgetCommon(
                                text: e['date&Time'],
                                style: AppCss.latoLight14.textColor(
                                    appColor(context).appTheme.lightText),
                              )
                            ])
                      ])
                      .padding(horizontal: Sizes.s15, vertical: Sizes.s15)
                      .lastPaidExtension(context).padding(bottom: Sizes.s15))
              .toList())
    ]);
  }
}
