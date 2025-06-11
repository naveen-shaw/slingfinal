import '../../../../config.dart';

class MyPortfolioWidgets {
  //my portfolio screen icon,title,subtitle,percentage,map layout
  Widget iconTitleMap(context, e) {
    var themeCtrl = Provider.of<ThemeService>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        SvgPicture.asset(themeCtrl.isDarkMode ? e['iconDark'] : e['icon']),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            TextWidgetCommon(text: e['title']),
            HSpace(Sizes.s8),
            TextWidgetCommon(
                text: e['subTitle'],
                color: appColor(context).appTheme.lightText)
          ]),
          VSpace(Sizes.s4),
          TextWidgetCommon(
              text: e['per'],
              style: AppCss.latoMedium12.textColor(
                  e['per'].toString().contains('+')
                      ? appColor(context).appTheme.green
                      : appColor(context).appTheme.red))
        ]).padding(horizontal: Sizes.s10)
      ]),
      SvgPicture.asset(e['mapIcons'])
    ]);
  }

//portfolio icon title & amount container layout
  Widget portfolioAmount(
      CryptoMyPortfolioProvider cryptoCtrl, BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cryptoCtrl.portfolioAmount
                .asMap()
                .entries
                .map((e) => Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              SvgPicture.asset(e.value['icon'],
                                      height: Sizes.s40, width: Sizes.s40)
                                  .padding(vertical: Sizes.s15),
                              HSpace(Sizes.s12),
                              TextWidgetCommon(text: e.value['title'])
                            ]),
                            TextWidgetCommon(
                                text:'${getSymbol(context)}${(currency(context).currencyVal * double.parse(e.value['price'])).toStringAsFixed(2)}')
                          ]),
                      if (e.key != 3)
                        Divider(
                            height: 0,
                            color: appColor(context).appTheme.dividerColor)
                    ]))
                .toList())
        .padding(horizontal: Sizes.s15)
        .lastPaidExtension(context);
  }

  //revenue flow chart title and percentage layout
  Widget revenueFlowChartTitlePer(
      BuildContext context, CryptoMyPortfolioProvider cryptoCtrl) {
    return Expanded(
        flex: 4,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: cryptoCtrl.revenueFlowPercentage
                .map((e) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(e['icon']),
                                HSpace(Sizes.s6),
                                TextWidgetCommon(
                                    text: e['title'],
                                    style: AppCss.latoSemiBold12.textColor(
                                        appColor(context).appTheme.darkText))
                              ]),
                          Row(children: [
                            TextWidgetCommon(
                                text: e['per'],
                                style: AppCss.latoSemiBold12.textColor(
                                    appColor(context).appTheme.darkText)),
                            HSpace(Sizes.s20)
                          ])
                        ]).padding(bottom: Sizes.s10))
                .toList()));
  }
}
