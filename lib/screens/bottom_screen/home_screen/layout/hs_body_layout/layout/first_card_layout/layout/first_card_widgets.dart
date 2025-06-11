import '../../../../../../../../config.dart';

class FirstCardWidgets {
  // Home Screen + add money layout
  Widget addMoney(context, LanguageProvider languageCtrl) => RotatedBox(
          quarterTurns:
              languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                  ? 3
                  : -3,
          child: TextWidgetCommon(
              text: appFonts.cardAddMoney,
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.primary)))
      .paddingOnly(
          right: languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
              ? 0
              : Sizes.s30,
          left: languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
              ? Sizes.s30
              : 0);

  // Home screen first card dottedLine layout
  Widget dottedLineLayout(context) => DottedLine(
          alignment: WrapAlignment.center,
          dashLength: 5.0,
          dashGapLength: 2.0,
          lineThickness: 2,
          dashColor: appColor(context).appTheme.gray.withOpacity(0.6),
          direction: Axis.vertical,
          lineLength: Sizes.s45)
      .paddingSymmetric(horizontal: Sizes.s10);

  //HomeScreen first card income and expense layout
  Widget incomeAndExpense(
    context,
    String svgIcon,
    String titleText,
    String incomeAmount, {
    ColorFilter? colorFilter,
    Color? textColor,
    Color? boldTextColor,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        SvgPicture.asset(svgIcon,
                colorFilter: colorFilter,
                height: Sizes.s18,
                width: Sizes.s18,
                fit: BoxFit.fill)
            .padding(horizontal: Sizes.s3),
        TextWidgetCommon(
            text: titleText,
            style: AppCss.latoMedium14
                .textColor(textColor ?? appColor(context).appTheme.white)
                .textHeight(1.2))
      ]),
      TextWidgetCommon(
              text:
                  "${getSymbol(context)}${(currency(context).currencyVal * double.parse(incomeAmount)).toStringAsFixed(2)}",
              style: AppCss.latoBold16
                  .textColor(boldTextColor ?? appColor(context).appTheme.white)
                  .textHeight(1.3))
          .padding()
    ]);
  }

  //HomeScreen first card totalBalance layout
  Widget totalBalance(context, LanguageProvider languageCtrl) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              TextWidgetCommon(
                      text: appFonts.totalBalance,
                      style: AppCss.latoMedium16
                          .textColor(appColor(context).appTheme.white)
                          .textHeight(1.2))
                  .padding(
                      right: languageCtrl.isUserRTl ||
                              languageCtrl.getLocal() == 'ar'
                          ? Sizes.s0
                          : Sizes.s100,
                      left: languageCtrl.isUserRTl ||
                              languageCtrl.getLocal() == "ar"
                          ? Sizes.s100
                          : Sizes.s0),
              SvgPicture.asset(eSvgAssets.cardRound,
                  fit: BoxFit.fill, width: Sizes.s30, height: Sizes.s20)
            ]),
            TextWidgetCommon(
                    text:
                        "${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.totalBalanceAmount)).toStringAsFixed(2)}",
                    style: AppCss.latoExtraBold20
                        .textColor(appColor(context).appTheme.white)
                        .textHeight(1.2))
                .padding(bottom: Sizes.s32)
          ]);

//addMoney common dialog layout
    addMoneyDialog(context,  ) {
    return commonDialog(context, false, text: appFonts.addMoney, children: [
      Consumer<HomeScreenProvider>(
          builder: (context1, homeCtrl, child) {
          return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [TextWidgetCommon(text: appFonts.from).padding(bottom: Sizes.s10),
            CommonDropDownMenu(
                value: homeCtrl.from,
                onChanged: (newValue) => homeCtrl.formChange(newValue),
                hintText: appFonts.from,
                itemsList: homeCtrl.dialogDropDownItems
                    .map((item) => DropdownMenuItem<dynamic>(
                    value: item['value'],
                    child: TextWidgetCommon(text: item['label'])))
                    .toList()),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidgetCommon(
                  text: appFonts.amount,
                  style: AppCss.latoLight16
                      .textColor(appColor(context).appTheme.darkText))
                  .padding(bottom: Sizes.s10),
              Row(children: [
                Expanded(
                    child: TextFiledCommon(keyboardType: TextInputType.number,
                        hintText: appFonts.amount,
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText)))
              ])
            ]).padding(bottom: Sizes.s30, top: Sizes.s20),
            CommonAuthButton(text: appFonts.deposit)
                .inkWell(onTap: () => route.pop(context))]);
        }
      )

    ]);
  }
}
