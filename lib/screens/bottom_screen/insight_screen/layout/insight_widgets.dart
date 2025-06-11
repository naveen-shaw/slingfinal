import 'package:mpay/config.dart';

class InsightWidgets {
  // insight shopping food health entertainment layout
  Widget shoppingFoodLayout(BuildContext context, LanguageProvider languageCtrl,
      InsightProvider insightCtrl) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: insightCtrl.insightList.asMap().entries
                .map((e) => Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(e.value['icon'],
                                    height: Sizes.s40, width: Sizes.s40),
                              HSpace(Sizes.s12),
                            TextWidgetCommon(
                                    text: e.value['title'],
                                    style: AppCss.latoLight14.textColor(
                                        appColor(context).appTheme.darkText))
                                .expanded(flex: 2),
                            TextWidgetCommon(
                                text:
                                    "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e.value["price"])).toStringAsFixed(2)}",
                                style: AppCss.latoSemiBold14.textColor(
                                    appColor(context).appTheme.darkText))
                          ]).padding(vertical: Sizes.s15),
                      if(e.key!=3)
                      Divider(
                          height: 1,
                          color: appColor(context).appTheme.dividerColor)
                    ]).padding(horizontal: Sizes.s15))
                .toList())
        .lastPaidExtension(context);
  }

  // transaction history layout
  Widget transactionHistoryLayout(context, HomeScreenProvider homeCtrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
                text: appFonts.transactionHistory,
                style: AppCss.latoBold18
                    .textColor(appColor(context).appTheme.darkText))
            .padding(top: Sizes.s25,bottom: Sizes.s18),
        Column(children: homeCtrl.transaction.map((e) =>
            //Transaction icon,title, subtitle,price, time layout
            TransactionLayout(data: e).padding(bottom: Sizes.s15)).toList())
      ],
    );
  }

  //insight screen total balance layout
  Widget totalBalance(context) {
    return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(eImageAssets.profileBoard),
                fit: BoxFit.fill)),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextWidgetCommon(
              text: appFonts.totalBalance,
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.white.withOpacity(.8))),
          TextWidgetCommon(
              text:
              '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.totalBalanceAmount)).toStringAsFixed(2)}',
              color: appColor(context).appTheme.white)
        ]).padding(vertical: Sizes.s16, horizontal: Sizes.s20));
  }
  //insight BarChart Buttons Layout
Widget insightBarChartButtonLayout(context, InsightProvider insightCtrl){
    return       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        TextWidgetCommon(
            text: "${appFonts.analytics} ",
            style: AppCss.latoSemiBold12
                .textColor(appColor(context).appTheme.darkText)),
        TextWidgetCommon(
            text: appFonts.insightChartMonths,
            style: AppCss.latoSemiBold12
                .textColor(appColor(context).appTheme.lightText))
      ]),
      Row(
          children: insightCtrl.barList
              .asMap()
              .entries
              .map((e) => TextWidgetCommon(
              text: e.value,
              style: AppCss.latoBold12.textColor(
                  insightCtrl.selectedIndex == e.key
                      ? appColor(context).appTheme.white
                      : appColor(context).appTheme.lightText))
              .center()
              .height(Sizes.s26)
              .width(Sizes.s26)
              .decorated(
              gradient: insightCtrl.selectedIndex == e.key
                  ? gradientColor(context)
                  : gradientColorChange(context,
                  firstColor:
                  appColor(context).appTheme.dividerColor,
                  secColor:
                  appColor(context).appTheme.dividerColor),
              shape: BoxShape.circle)
              .inkWell(
              onTap: () => insightCtrl.insightMonthOnTap(e.key))
              .padding(horizontal: Sizes.s5))
              .toList())
    ]).padding(vertical: Sizes.s15);
} 
}
