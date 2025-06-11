


import '../../../config.dart';


class CryptoMyPortfolioScreen extends StatelessWidget {
  const CryptoMyPortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CryptoMyPortfolioProvider>(
        builder: (context1, cryptoCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => cryptoCtrl.init()),
          child: DirectionalityRtl(
            child: Scaffold(
                appBar: CommonAppBar(
                    onTap: () => route.pop(context),
                    title: appFonts.myPortfolio,
                    isImageIconSvg: true,
                    imageIconTap: () => addCurrencyDialog(context),
                    isImageIcon: eSvgAssets.add),
                body: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      CryptoWidgets().cryptoCurrentBalance(context),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyCurrencyLayout(cryptoCtrl),
                            RevenueFlowLayout(cryptoCtrl),
                            //portfolio icon title & amount container layout
                            MyPortfolioWidgets()
                                .portfolioAmount(cryptoCtrl, context)

                          ]).padding(
                        horizontal: Sizes.s20,
                      ),
                    ]).padding(bottom: Sizes.s20))),
          ));
    });
  }
}
