import '../../../config.dart';

class BuyAndSellWidgets {
  //buy and sell screen select date dialog layout
  selectDateDialog(context) {
    return commonDialog(context, false, text: appFonts.selectPeriod, children: [
      TextWidgetCommon(text: appFonts.fromDate).padding(bottom: Sizes.s8),
      TextFiledCommon(
          hintText: appFonts.selectDate,
          suffixIcon: SvgPicture.asset(eSvgAssets.calendar,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                  appColor(context).appTheme.darkText, BlendMode.srcIn))),
      TextWidgetCommon(text: appFonts.toDate)
          .padding(bottom: Sizes.s8, top: Sizes.s20),
      TextFiledCommon(
              hintText: appFonts.selectDate,
              suffixIcon: SvgPicture.asset(eSvgAssets.calendar,
                  colorFilter: ColorFilter.mode(
                      appColor(context).appTheme.darkText, BlendMode.srcIn),
                  fit: BoxFit.scaleDown))
          .padding(bottom: Sizes.s30),
      CommonAuthButton(text: appFonts.viewTransaction)
    ]);
  }

  //Buy and Sell screen price percentage Layout
  Widget pricePercentLayout(context, e) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      TextWidgetCommon(
          text:
              '${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['price'])).toStringAsFixed(2)}',
          style:
              AppCss.latoBold14.textColor(appColor(context).appTheme.darkText)),
      VSpace(Sizes.s5),
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: language(context, e['per']),
            style: AppCss.latoLight14.textColor(
                e['per'].toString().contains('+')
                    ? appColor(context).appTheme.green
                    : appColor(context).appTheme.red)),
        TextSpan(
            text: language(context, appFonts.hours),
            style: AppCss.latoLight14
                .textColor(appColor(context).appTheme.lightText))
      ]))
    ]);
  }

  //Buy and Sell screen icon,title & subtitle layout
  Widget iconTitleLayout(context, e) {
    return Row(children: [
      SvgPicture.asset(e['icon']),
      HSpace(Sizes.s8),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(text: e['title']),
        VSpace(Sizes.s5),
        TextWidgetCommon(
            text: e['subTitle'],
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.lightText))
      ])
    ]);
  }
}
