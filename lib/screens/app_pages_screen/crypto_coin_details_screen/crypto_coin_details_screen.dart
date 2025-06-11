import '../../../config.dart';

class CryptoCoinDetailsScreen extends StatelessWidget {
  const CryptoCoinDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CryptoCoinDetailsProvider>(
        builder: (context1, coinCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => coinCtrl.init()),
          child: DirectionalityRtl(
              child: Scaffold(
                  appBar: CommonAppBar(
                      bgColor: appColor(context).appTheme.lightBGColor,
                      title: appFonts.coinDetail,
                      onTap: () => route.pop(context)),
                  body: SingleChildScrollView(
                      child: Column(children: [
                    CommonDropDownMenu(
                        value: coinCtrl.cryptoDrop,
                        onChanged: (value) =>
                            coinCtrl.startMonthOnChange(value),
                        hintText: appFonts.btcUsd,
                        borderRadius: BorderRadius.zero,
                        underline: Divider(
                                height: 0,
                                color: appColor(context).appTheme.dividerColor)
                            .padding(top: Sizes.s5),
                        itemsList: coinCtrl.coinDetailsDropDownItems
                            .map((item) => DropdownMenuItem<dynamic>(
                                value: item['value'],
                                child: TextWidgetCommon(text: item['label'])))
                            .toList()),

                    //crypto screen bitCoin Card layout
                    Column(children: [
                      //crypto screen bitCoin Card layout
                      CryptoCoinDetailsWidget()
                          .bitCoinCardLayout(context, coinCtrl),
                      //LineBar Chart Months Buttons
                      ChartButtonsLayout()
                          .lineBarChartMonthButtons(context, coinCtrl)
                    ])
                        .padding(horizontal: Sizes.s20, top: Sizes.s20)
                        .backgroundColor(
                            appColor(context).appTheme.lightBGColor),
                    //My portfolio LineBar chart layout
                    LineBarChart(coinCtrl),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //crypto screen statics layout
                          CoinStaticsLayout(coinCtrl),
                          //crypto screen buy & sell history layout
                          CoinBuyAndSellLayout(coinCtrl),
                          //crypto screen Bitcoin Update layout
                          CoinBitcoinUpdateLayout(coinCtrl)
                        ]).padding(horizontal: Sizes.s20, vertical: Sizes.s20)
                  ])))));
    });
  }
}
