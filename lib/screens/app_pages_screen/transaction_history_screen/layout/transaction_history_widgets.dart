import '../../../../config.dart';

class TransactionHistoryWidgets {
  // transaction Amazon Bill Detail dialog layout
  transactionDialogBox(context, TransactionHistoryProvider transCtrl) {
    return commonDialog(context, false,
        text: appFonts.amazonBillDetail,
        children: transCtrl.amazonBillDetail.asMap().entries.map((entries) {
          var e = entries.value;
          var index = entries.key;
          return Column(children: [
            if(e['title'] != appFonts.amount)
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextWidgetCommon(
                text: e['title'],
                style: AppCss.latoMedium15,
              ).padding(bottom: Sizes.s20),
              TextWidgetCommon(
                text: e['status'],
                style: AppCss.latoSemiBold16
                    .textColor(appColor(context).appTheme.lightText),
              ).padding(bottom: Sizes.s20)
            ]),
            // Add a divider after the 4th item and show 4th title and status
            if (index != 3 &&
                entries.key == transCtrl.amazonBillDetail.length - 1)
              Column(children: [

                DottedLine(dashColor: appColor(context).appTheme.lightText),
                VSpace(Sizes.s20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidgetCommon(
                              text: e['title'], style: AppCss.latoMedium15)
                          .padding(bottom: Sizes.s20),
                      TextWidgetCommon(
                              text: "${getSymbol(context)}${(currency(context).currencyVal*double.parse(e['status'])).toStringAsFixed(2)}",
                              style: AppCss.latoSemiBold16.textColor(
                                  appColor(context).appTheme.red))
                          .padding(bottom: Sizes.s20)
                    ])
              ])
          ]);
        }).toList());
  }

// transaction select Date dialog layout
  transactionSelectDateDialog(context, ) {
    return commonDialog(context, false, text: appFonts.selectPeriod, children: [
      Consumer<TransactionHistoryProvider>(
        builder: (context, transCtrl, child)  {
          return Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidgetCommon(text: appFonts.fromDate).padding(bottom: Sizes.s8),
              TextFiledCommon(
                  hintText: appFonts.selectDate,
                  controller: transCtrl.selectDate,
                  onTap: () => transCtrl.dateOnTap(context),
                  suffixIcon: SvgPicture.asset(
                    eSvgAssets.calendar,
                    fit: BoxFit.scaleDown,
                    colorFilter: ColorFilter.mode(
                        appColor(context).appTheme.darkText, BlendMode.srcIn),
                  )),
              TextWidgetCommon(text: appFonts.toDate)
                  .padding(bottom: Sizes.s8, top: Sizes.s20),
              TextFiledCommon(
                  hintText: appFonts.selectDate,
                  controller: transCtrl.toDate,
                  onTap: () => transCtrl.toDateOnTap(context),
                  suffixIcon: SvgPicture.asset(eSvgAssets.calendar,
                      colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.darkText, BlendMode.srcIn),
                      fit: BoxFit.scaleDown))
                  .padding(bottom: Sizes.s30),
              CommonAuthButton(text: appFonts.viewTransaction).inkWell(onTap: () {
                transCtrl.thOnTapTrue();
                route.pop(context);
              })
            ],
          );
        }
      ),

    ]);
  }

  // setting tap DropDown layout
  settingTapDropDown(context, transCtrl, LanguageProvider languageCtrl) {
    NavigationBarWidgets().showPopupMenu(context, items: [
      menuItems(appFonts.mostRecent,context),
      menuDivider(context),
      menuItems(appFonts.lastMonth,context),
      menuDivider(context),
      menuItems(appFonts.custom,context,
          // transaction select Date dialog layout
          onTap: () => TransactionHistoryWidgets()
              .transactionSelectDateDialog(context)),
      menuDivider(context),
      menuItems(appFonts.removeAll,context)
    ]);
  }
}
