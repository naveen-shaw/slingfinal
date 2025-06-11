

import 'package:mpay/config.dart';

class BillDetailsDialogsWidgets {
  //common billDetails Dialog amount,bill date,due Date,bill Number,Mobile Number,Bill Status layout
  Widget commonBillLayout(context, data) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextWidgetCommon(text: appFonts.amount),
            TextWidgetCommon(text: appFonts.billDate)
                .padding(vertical: Sizes.s20),
            TextWidgetCommon(text: appFonts.dueDate),
            TextWidgetCommon(text: appFonts.billNumber)
                .padding(vertical: Sizes.s20),
            TextWidgetCommon(text: appFonts.mobileNumber),
            TextWidgetCommon(text: appFonts.billStatus)
                .padding(bottom: Sizes.s30, top: Sizes.s20)
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            TextWidgetCommon(
              text: "${getSymbol(context)}${(currency(context).currencyVal*double.parse(data["price"])).toStringAsFixed(2)}",
              color: appColor(context).appTheme.primary,
            ),
            TextWidgetCommon(
              text: appFonts.mobileBillDate,
              color: appColor(context).appTheme.lightText,
            ).padding(vertical: Sizes.s20),
            TextWidgetCommon(
              text: appFonts.mobileDueDate,
              color: data['title'].toString().contains(appFonts.apple) ||
                      data['title'].toString().contains(appFonts.tv)
                  ?appColor(context). appTheme.red
                  :appColor(context). appTheme.lightText,
            ),
            TextWidgetCommon(
              text: appFonts.mobileBillNumber,
              color:appColor(context).appTheme.lightText,
            ).padding(vertical: Sizes.s20),
            TextWidgetCommon(
              text: appFonts.mobileDialogNumber,
              color: appColor(context).appTheme.lightText,
            ),
            TextWidgetCommon(
              text: data['title'].toString().contains(appFonts.apple) ||
                      data['title'].toString().contains(appFonts.tv)
                  ? appFonts.unpaid
                  : appFonts.paid,
              color: data['title'].toString().contains(appFonts.apple) ||
                      data['title'].toString().contains(appFonts.tv)
                  ? appColor(context).appTheme.red
                  : appColor(context).appTheme.lightText,
            ).padding(bottom: Sizes.s30, top: Sizes.s20),
          ])
        ]),
        CommonAuthButton(
                text: data['title'].toString().contains(appFonts.apple) ||
                        data['title'].toString().contains(appFonts.tv)
                    ? "${getSymbol(context)}${(currency(context).currencyVal*double.parse(data["price"])).toStringAsFixed(2)}"
                    : appFonts.paidThankYou,onTap: () {
          if (data['title'].toString().contains(appFonts.apple) ||
              data['title'].toString().contains(appFonts.tv)) {
            route.pop(context);
            //bill make Payment screen
            route.pushNamed(context, routeName.billMakePayment);
          } else {
            route.pop(context);
          }
        },
              )

      ],
    );
  }
//Make a payment screen dialog pay from,pay to, Date layout
  Widget makePaymentDialogLayout(context) {
    var bottomCtrl = Provider.of<BottomNavigationProvider>(context,listen: false);

    return Column(children: [
      Image.asset(eImageAssets.successFullyTransfer).padding(bottom: Sizes.s15),
      TextWidgetCommon(
        text: '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.numbers)).toStringAsFixed(2)}',
        style: AppCss.latoBold30.textColor(appColor(context).appTheme.primary),
      ),
      TextWidgetCommon(
              text: appFonts.srNumber,
              style: AppCss.latoLight14.textColor(appColor(context).appTheme.lightText))
          .padding(top: Sizes.s5),
      DottedLine(dashColor: appColor(context).appTheme.gray.withOpacity(0.2))
          .padding(vertical: Sizes.s15),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextWidgetCommon(text: appFonts.payFrom),
          TextWidgetCommon(text: appFonts.payTo).padding(vertical: Sizes.s15),
          TextWidgetCommon(text: appFonts.date)
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextWidgetCommon(
              text: appFonts.recentNumber, color: appColor(context).appTheme.lightText),
          TextWidgetCommon(
                  text: appFonts.payToNumber, color: appColor(context).appTheme.lightText)
              .padding(vertical: Sizes.s15),
          TextWidgetCommon(text: appFonts.payDate, color: appColor(context).appTheme.lightText)
        ])
      ]).padding(bottom: Sizes.s30),
      CommonAuthButton(text: appFonts.backToHome,onTap:() {
        route.pop(context);
        bottomCtrl.onTap(context);
      })
          
    ]);
  }
}
