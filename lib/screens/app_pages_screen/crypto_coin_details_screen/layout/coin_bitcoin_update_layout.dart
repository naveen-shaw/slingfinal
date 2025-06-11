import 'package:mpay/config.dart';

class CoinBitcoinUpdateLayout extends StatelessWidget {
  final CryptoCoinDetailsProvider coinCtrl;

  const CoinBitcoinUpdateLayout(this.coinCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CommonTitleText(title: appFonts.bitcoinUpdate)
          .padding(top: Sizes.s25, bottom: Sizes.s18),
      Column(
          children: coinCtrl.coinBitcoinUpdate
              .map((e) => Row(children: [
                    HSpace(Sizes.s15),
                    Image.asset("${e['image']}",
                        height: Sizes.s86, width: Sizes.s110),
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: Sizes.s160,
                                child: TextWidgetCommon(
                                    textAlign: TextAlign.start,
                                    text: e['title'])),
                            VSpace(Sizes.s10),
                            DottedLine(
                              alignment: WrapAlignment.center,
                              dashLength: 5.0,
                              dashGapLength: 2.0,
                              lineThickness: 1,
                              dashColor:
                                  appColor(context).appTheme.dividerColor,
                              direction: Axis.horizontal,
                            ), VSpace(Sizes.s5),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidgetCommon(
                                      text: e['date'],
                                      style: AppCss.latoMedium12.textColor(
                                          appColor(context)
                                              .appTheme
                                              .lightText)),
                                  HSpace(Sizes.s30),
                                  TextWidgetCommon(
                                      text: e['name'],
                                      style: AppCss.latoMedium12.textColor(
                                          appColor(context).appTheme.lightText))
                                ])
                          ]).paddingSymmetric(vertical: Sizes.s5,horizontal: Insets.i15),
                    )
                  ])
              .paddingSymmetric(vertical: Sizes.s15)
                      .newsUpdateExtension(context))
              .toList())
    ]);
  }
}
