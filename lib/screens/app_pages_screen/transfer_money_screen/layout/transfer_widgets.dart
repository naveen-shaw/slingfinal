import '../../../../config.dart';

class TransferMoneyWidgets {
  //recent payee icon layout
  Widget recentPayeeIconTextLayout(
      TransferMoneyProvider transCtrl,
      LanguageProvider languageCtrl,
      ThemeService themeCtrl,
      BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: transCtrl.recentPayeesList.asMap().entries.map((entry) {
          final index = entry.key;
          final e = entry.value;
          return Column(children: [
            Stack(children: [
              Row(children: [
                HSpace(Sizes.s10),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  index == 0 && themeCtrl.isDarkMode
                      ? Image.asset(eImageAssets.firstQuickDark,
                          fit: BoxFit.fill)
                      : Image.asset("${e["icon"]}", fit: BoxFit.fill)
                ]).quickExtension(context,
                    onTap: () => index == 0
                        ? route.pushNamed(context, routeName.payeeListScreen)
                        : route.pushNamed(context, routeName.payingMoneyScreen))
              ])
            ]).width(Sizes.s70).marginOnly(top: Sizes.s20, bottom: Sizes.s10),
            Column(children: [
              TextWidgetCommon(
                  text: e["title"],
                  style: AppCss.latoMedium14
                      .textColor(appColor(context).appTheme.darkText)),
              TextWidgetCommon(
                  text: e["pin"],
                  style: AppCss.latoMedium12
                      .textColor(appColor(context).appTheme.lightText)
                      .textHeight(1.7))
            ])
          ]);
        }).toList()));
  }

  //amount Layout
  Widget amountLayout(Function(int, String) updateAmount) {
    return Consumer<TransferMoneyProvider>(
        builder: (context, transCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => transCtrl.init()),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: transCtrl.amountList.asMap().entries.map((entries) {
              var e = entries.value;
              var index = entries.key;
              return Container(
                      padding:
                          EdgeInsets.only(left: Sizes.s12, right: Sizes.s12),
                      child: TextWidgetCommon(
                          text:
                              "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e)).toStringAsFixed(2)}",
                          style: AppCss.latoMedium12
                              .textColor(appColor(context).appTheme.primary)))
                  .center()
                  .height(Sizes.s28)
                  .decorated(
                      color: appTheme.primary.withOpacity(0.2),
                      borderRadius:
                          SmoothBorderRadius(cornerRadius: AppRadius.r20))
                  .inkWell(onTap: () => updateAmount(index, e))
                  .padding(top: Sizes.s12, right: Sizes.s10);
            }).toList()),
      );
    });
  }

// select bank image layout
  Widget selectBankImageLayout(context, e, LanguageProvider lan) {
    return Transform.flip(
      flipX: lan.isUserRTl || lan.getLocal() == 'ar' ? true : false,
      child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(
            text: appFonts.balance,
            style:
                AppCss.latoMedium12.textColor(appColor(context).appTheme.gray)),
        TextWidgetCommon(
                text:
                    "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e["amount"])).toStringAsFixed(2)}",
                color: appColor(context).appTheme.primary)
            .padding(bottom: Sizes.s20, top: Sizes.s4),
        TextWidgetCommon(
            text: e['accountNumber'],
            style: AppCss.latoRegular13
                .textColor(appColor(context).appTheme.darkText))
      ]).padding(all: Sizes.s25)),
    );
  }

// select bank container layout
  Widget selectBankImageContainer(
      context, isCheck, LanguageProvider languageCtrl) {
    return Align(
            alignment: languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                ? Alignment.topLeft
                : Alignment.topRight,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: isCheck
                            ? appColor(context)
                                .appTheme
                                .primary
                                .withOpacity(0.18)
                            : appColor(context).appTheme.gray.withOpacity(.18)),
                    color: isCheck
                        ? appColor(context).appTheme.primary
                        : appColor(context).appTheme.gray.withOpacity(0.1)),
                height: Sizes.s33,
                width: Sizes.s33,
                child: isCheck
                    ? Icon(Icons.check, color: appColor(context).appTheme.white)
                    : const SizedBox()))
        .padding(
            top: Sizes.s8,
            right: languageCtrl.isUserRTl ? 0 : Sizes.s10,
            left: languageCtrl.isUserRTl ? Insets.i10 : 0);
  }

  // transfer($19.99) text layout
  Widget transferButton(context, {onTap}) {
    return CommonAuthButton(
      text: appFonts.transferButton,
    ).inkWell(onTap: onTap);
  }
}
