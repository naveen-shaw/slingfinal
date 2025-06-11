import 'package:mpay/config.dart';

class BillMakePayment extends StatelessWidget {
  const BillMakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TransferMoneyProvider>(
        builder: (context1, transCtrl, child) {
      return DirectionalityRtl(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: appColor(context).appTheme.screenBg,
              appBar: CommonAppBar(
                  title: appFonts.makePayment, onTap: () => route.pop(context)),
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetCommon(text: appFonts.bankName)
                        .padding(bottom: Sizes.s8, top: Sizes.s10),
                    CommonDropDownMenu(
                        value: transCtrl.bankName,
                        onChanged: (value) =>
                            transCtrl.dropDownBankNameOnChange(value),
                        hintText: appFonts.bankName,
                        itemsList: transCtrl.dropdownItems
                            .map((item) => DropdownMenuItem<dynamic>(
                                value: item['value'],
                                child: TextWidgetCommon(text: item['label'])))
                            .toList()),
                    TextWidgetCommon(text: appFonts.billPayTo)
                        .padding(bottom: Sizes.s8, top: Sizes.s10),
                    CommonDropDownMenu(
                        value: transCtrl.selectService,
                        onChanged: (value) =>
                            transCtrl.dropDownSelectServiceOnChange(value),
                        hintText: appFonts.selectService,
                        itemsList: transCtrl.dropdownItems
                            .map((item) => DropdownMenuItem<dynamic>(
                                value: item['value'],
                                child: TextWidgetCommon(text: item['label'])))
                            .toList()),
                    TextWidgetCommon(text: appFonts.billSerialNumber)
                        .padding(bottom: Sizes.s8, top: Sizes.s10),
                    TextFiledCommon(hintText: appFonts.addSerialNumber),
                    TextWidgetCommon(text: appFonts.emailInvoiceTo)
                        .padding(bottom: Sizes.s8, top: Sizes.s10),
                    TextFiledCommon(hintText: appFonts.selectMaiId),
                    TextWidgetCommon(text: appFonts.amount)
                        .padding(bottom: Sizes.s8, top: Sizes.s10),
                    TextFiledCommon(hintText: appFonts.addAmount)
                        .padding(bottom: Sizes.s50),
                    CommonAuthButton(
                      text:
                          "${language(context, appFonts.payAmount)}(${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.numbers)).toStringAsFixed(2)})",
                      onTap: () => commonDialog(context, false,
                          text: appFonts.billPaid,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Make a payment screen dialog pay from,pay to, Date layout
                            BillDetailsDialogsWidgets()
                                .makePaymentDialogLayout(context)
                          ]),
                    )
                  ]).padding(horizontal: Sizes.s20)));
    });
  }
}
