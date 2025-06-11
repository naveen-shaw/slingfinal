import '../../../../config.dart';

class CoinStaticsLayout extends StatelessWidget {
  final CryptoCoinDetailsProvider coinCtrl;
  const CoinStaticsLayout(this.coinCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      TextWidgetCommon(text: appFonts.statics, style: AppCss.latoMedium18
          .textColor(appColor(context).appTheme.darkText))
          .padding( bottom: Sizes.s18,top: Sizes.s8),
      Column(
          children: coinCtrl.staticsList
              .map((e) => Column(children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextWidgetCommon(text: e['title']),
                  Expanded(
                      child: DottedLine(
                          direction: Axis.horizontal,
                          dashColor: appColor(context)
                              .appTheme
                              .gray
                              .withOpacity(.2))
                          .padding(horizontal: Sizes.s10)),
                  TextWidgetCommon(
                      text:
                      '${(currency(context).currencyVal * double.parse(e['price'])).toStringAsFixed(2)} ${getSymbol(context)}',
                      style: AppCss.latoBold14.textColor(
                          appColor(context).appTheme.lightText))
                ]).padding(vertical: Sizes.s10)
          ]))
              .toList())
          .padding(horizontal: Sizes.s15, vertical: Sizes.s10)
          .lastPaidExtension(context)
    ]);
  }
}
