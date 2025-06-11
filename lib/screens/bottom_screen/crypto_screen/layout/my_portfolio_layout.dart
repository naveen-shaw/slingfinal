import '../../../../config.dart';

//crypto screen my Portfolio layout
class MyPortfolioLayout extends StatelessWidget {
  const MyPortfolioLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var cryptoCtrl = Provider.of<CryptoProvider>(context);
    return Column(children: [
      CommonTitleText(
              title: appFonts.myPortfolio,
              onTap: () =>
                  route.pushNamed(context, routeName.cryptoMyPortfolioScreen))
          .padding(bottom: Sizes.s18, top: Sizes.s25),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
                  children: cryptoCtrl.myPortfolio.map((e) {
            return Row(children: [
              IntrinsicWidth(
                  child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Crypto Screen my Crypto Layout icon,title,percentage, mapIcon layout
                            CryptoWidgets().myCryptoIconTitle(e,context),
                    VSpace(Sizes.s12),
                    Divider(
                        height: 0,
                        color: appColor(context).appTheme.dividerColor),
                    IntrinsicHeight(
                        child: Row(children: [
                      TextWidgetCommon(style: AppCss.latoMedium14.textColor(appColor(context).appTheme.lightText),
                              text:
                                  '${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['price'])).toStringAsFixed(2)}')
                          .padding(all:Sizes.s8,top: Sizes.s15),
                      VerticalDivider(
                          color: appColor(context).appTheme.dividerColor),
                      TextWidgetCommon(
                              text: e['upDownPrice'],
                              style: AppCss.latoSemiBold14.textColor(appColor(context).appTheme.darkText))
                          .padding(all:Sizes.s8,top: Sizes.s15)
                    ]))
                  ])
                      .padding(horizontal: Sizes.s15, vertical: Sizes.s13)
                      .cryptoExtention(context)
                      .inkWell(
                          onTap: () => route.pushNamed(
                              context, routeName.cryptoCoinDetailsScreen))),
              HSpace(Sizes.s15)
            ]);
          }).toList())
              .marginOnly(bottom: Sizes.s10,top: Sizes.s2))
    ]);
  }
}
