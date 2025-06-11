import '../../../../config.dart';

class WithDrawScreenWidgets {
  //money withdraw from text layout
  Widget moneyWithdrawFrom() {
    return TextWidgetCommon(
      text: appFonts.moneyWithdrawFrom,
      style: AppCss.latoSemiBold18,
    ).padding(horizontal: Sizes.s15, top: Sizes.s10, bottom: Sizes.s15);
  }

  // withdraw screen Money withdraw to text, select card dropdown, amount and add amount textFiled layout
  Widget textFiledLayout(
      context, HomeScreenProvider homeCtrl, WithDrawProvider withdrawCtrl) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(
        text: appFonts.moneyWithdrawTo,
      ).padding(top: Sizes.s15, bottom: Sizes.s8),
      CommonDropDownMenu(
          value: homeCtrl.selectCard,
          onChanged: (value) => homeCtrl.selectCardChange(value),
          hintText: appFonts.selectCard,
          itemsList: homeCtrl.dialogDropDownItems
              .map((item) => DropdownMenuItem<dynamic>(
                    value: item['value'],
                    child: TextWidgetCommon(text: item['label']),
                  ))
              .toList()),
      TextWidgetCommon(
        text: appFonts.amount,
      ).padding(bottom: Sizes.s8, top: Sizes.s10),
      TextFiledCommon(keyboardType: TextInputType.number,
          hintText: appFonts.addAmount,
          controller: withdrawCtrl.withDrawAmountCtrl),
      //Amount Layout
      TransferMoneyWidgets()
          .amountLayout(withdrawCtrl.updateTextField)
          .padding(bottom: Sizes.s50),
      CommonAuthButton(text: appFonts.withdraw).inkWell(
          onTap: () => commonDialog(context, false,
                  text: appFonts.errorInWithdraw,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //error ans successfully Withdraw dialog layout
                    dialogLayout(context)
                  ]))
    ]).padding(horizontal: Sizes.s20);
  }

//error ans successfully Withdraw dialog layout
  Widget dialogLayout(context) {
    var bottomCtrl =
        Provider.of<BottomNavigationProvider>(context, listen: false);
    return Column(children: [
      Image.asset(eImageAssets.errorInTransfer).padding(bottom: Sizes.s20),
      TextWidgetCommon(
        textAlign: TextAlign.center,
        text: appFonts.thereWasAProblem,
      ).padding(bottom: Sizes.s30),
      CommonAuthButton(text: appFonts.tryAgain).inkWell(onTap: () {
        route.pop(context);
        commonDialog(context, false,
            text: appFonts.successfullyWithdraw,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(eImageAssets.successFullyTransfer)
                  .padding(bottom: Sizes.s15),
              TextWidgetCommon(
                text:
                    '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.numbers)).toStringAsFixed(2)}',
                style: AppCss.latoBold30
                    .textColor(appColor(context).appTheme.primary),
              ),
              TextWidgetCommon(
                      textAlign: TextAlign.center,
                      text: appFonts.moneyHasBeenSuccessfully,
                      style: AppCss.latoLight16
                          .textColor(appColor(context).appTheme.lightText)
                          .textHeight(1.2),
                      color: appColor(context).appTheme.lightText)
                  .padding(bottom: Sizes.s30, top: Sizes.s8),
              CommonAuthButton(text: appFonts.backToHome).inkWell(
                onTap: () => bottomCtrl.onTap(context)
              )
            ]);
      })
    ]);
  }
}
