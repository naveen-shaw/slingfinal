import '../../../../config.dart';

class MyCurrencyLayout extends StatelessWidget {
  final CryptoMyPortfolioProvider cryptoCtrl;

  const MyCurrencyLayout(this.cryptoCtrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(builder: (context, languageCtrl, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(
                text: appFonts.myCurrency,
                style: AppCss.latoMedium18
                    .textColor(appColor(context).appTheme.darkText))
            .padding(bottom: Sizes.s18),
        ...cryptoCtrl.myCurrency.map((e) {
          return IntrinsicWidth(
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                //my portfolio screen icon,title,subtitle,percentage,map layout
                MyPortfolioWidgets().iconTitleMap(context, e),
                VSpace(Sizes.s12),
                Divider(
                    height: 0, color: appColor(context).appTheme.dividerColor),
                IntrinsicHeight(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      TextWidgetCommon(
                              style: AppCss.latoMedium14.textColor(
                                  appColor(context).appTheme.lightText),
                              text:
                                  '${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['price'])).toStringAsFixed(2)}')
                          .padding(top: Sizes.s15, bottom: Sizes.s8),
                      VerticalDivider(
                          color: appColor(context).appTheme.dividerColor),
                      TextWidgetCommon(
                              text: e['upDownPrice'],
                              style: AppCss.latoSemiBold14)
                          .padding(top: Sizes.s15, bottom: Sizes.s8),
                      VerticalDivider(
                          color: appColor(context).appTheme.dividerColor),
                      TextWidgetCommon(text: '(${e['off']})').padding(
                          top: Sizes.s15,
                          bottom: Sizes.s8,
                          right: languageCtrl.isUserRTl ||
                                  languageCtrl.getLocal() == 'ar'
                              ? Sizes.s0
                              : Sizes.s20,
                          left: languageCtrl.isUserRTl ||
                                  languageCtrl.getLocal() == 'ar'
                              ? Sizes.s20
                              : Sizes.s0),
                    ]).padding(bottom: Sizes.s15))
              ])
                  .width(MediaQuery.of(context).size.width)
                  .padding(horizontal: Sizes.s15, top: Sizes.s15)
                  .cryptoExtention(context)
                  .inkWell(
                      onTap: () => route.pushNamed(
                          context, routeName.cryptoCoinDetailsScreen))
                  .padding(bottom: Sizes.s15));
        }).toList()
      ]);
    });
  }
}
