import '../../../config.dart';

class CryptoBuySellScreen extends StatelessWidget {
  const CryptoBuySellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CryptoBuyAndSellProvider>(
        builder: (context1, buySellCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => buySellCtrl.init()),
          child: DirectionalityRtl(
            child: Scaffold(
              appBar: CommonAppBar(
                  settingTap: () => buySellCtrl.settingOnTap(context),
                  title: appFonts.buyAndSellHistory,
                  onTap: () => route.pop(context),
                  isSetting: true),
              body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...buySellCtrl.buyAndSellHistoryScreen.map((e) {
                        List newList = e['list'];
                        return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidgetCommon(
                                      text: e['dayTitle'],
                                      style: AppCss.latoSemiBold18.textColor(
                                          appColor(context).appTheme.darkText))
                                  .padding(bottom: Sizes.s18),
                              ...newList
                                  .map((e) => Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                //Buy and Sell screen icon,title & subtitle layout
                                                BuyAndSellWidgets()
                                                    .iconTitleLayout(
                                                        context, e),
                                                //Buy and Sell screen price percentage Layout
                                                BuyAndSellWidgets()
                                                    .pricePercentLayout(
                                                        context, e)
                                              ])
                                              .padding(
                                                  horizontal: Sizes.s15,
                                                  vertical: Sizes.s15)
                                              .lastPaidExtension(context)
                                              .padding(bottom: Sizes.s15))
                                  .toList()
                            ]);
                      }).toList()
                    ]).padding(horizontal: Sizes.s20, vertical: Sizes.s20),
              ),
            ),
          ));
    });
  }
}
