import 'package:mpay/config.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<HomeScreenProvider, CryptoProvider, LanguageProvider>(
        builder: (context1, homeCtrl, cryptoCtrl, languageCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => cryptoCtrl.init()),
          child: DirectionalityRtl(
              child: Scaffold(
                  backgroundColor: appColor(context).appTheme.screenBg,
                  body: SingleChildScrollView(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    //crypto screen current Balance layout
                    CryptoWidgets()
                        .cryptoCurrentBalance(context)
                        .backgroundColor(
                            appColor(context).appTheme.lightBGColor),
                    //candle chart layout
                    CandleStickChart(cryptoCtrl)
                        .padding(vertical: Sizes.s10)
                        .backgroundColor(
                            appColor(context).appTheme.lightBGColor),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(eSvgAssets.lineIcon),
                          SvgPicture.asset(eSvgAssets.lineIcon)
                        ]).padding(all: 0),
                    //crypto screen send,request,withdraw and exchange list layout
                    CryptoWidgets().sendRequestListLayout(context, cryptoCtrl),
                    Column(children: [
                      //crypto screen my Portfolio layout
                      const MyPortfolioLayout(),
                      //crypto screen buy and sell history layout
                      const BuyAndSellHistoryLayout(),
                      //crypto screen cards layout
                      CryptoWidgets()
                          .cryptoCardsLayout(context, cryptoCtrl, languageCtrl),
                      //crypto screen news Update layout
                      CryptoWidgets().cryptoNewsUpdateLayout(context)
                    ]).padding(horizontal: Sizes.s20)
                  ]).padding(bottom: Sizes.s100)))));
    });
  }
}
