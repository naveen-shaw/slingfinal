import '../../../../../config.dart';
//common transfer money BankName, card Number, amount layout
class CommonTransferMoneyLayout extends StatelessWidget {
  final dynamic value;
  final ValueChanged? onChanged;
  const CommonTransferMoneyLayout(this.value, this.onChanged, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<TransferMoneyProvider,HomeScreenProvider>(
        builder: (context1, transCtrl,homeCtrl, child) {
      return DirectionalityRtl(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
          TextWidgetCommon(
            text: appFonts.transferMoneyTo,
            style: AppCss.latoSemiBold18,
          ).padding(horizontal: Sizes.s20, bottom: Sizes.s18,top: Sizes.s15 ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidgetCommon(
                    text: appFonts.bankName, style: AppCss.latoSemiBold16)
                    .padding(bottom: Sizes.s8),
                CommonDropDownMenu(value:value,onChanged: onChanged,
                    hintText: appFonts.selectBank,
                    itemsList:  transCtrl
                        .dropdownItems
                        .map((item) => DropdownMenuItem<dynamic>(
                        value: item['value'], child: TextWidgetCommon(text:item['label'])))
                        .toList()),
                TextWidgetCommon(
                    text: appFonts.cardNumber, style: AppCss.latoSemiBold16)
                    .padding(top: Sizes.s15, bottom: Sizes.s8),
                TextFiledCommon(
                    hintText: appFonts.addCardNumber,
                    keyboardType: TextInputType.number),
                TextWidgetCommon(
                    text: appFonts.amount, style: AppCss.latoSemiBold16)
                    .padding(top: Sizes.s15, bottom: Sizes.s8),
                TextFiledCommon(
                  controller: transCtrl.amountCtrl,
                    hintText: appFonts.addAmount,
                    keyboardType: TextInputType.number),
                //Amount Layout
                TransferMoneyWidgets().amountLayout(transCtrl.updateTextField)
              ]).padding(horizontal: Sizes.s20)
        ]),
      );
    });
  }
}
