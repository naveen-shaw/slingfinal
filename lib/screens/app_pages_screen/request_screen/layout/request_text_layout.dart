import 'package:mpay/config.dart';

//request message, amount , send request button layout
class RequestTextLayout extends StatelessWidget {
  const RequestTextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<BottomNavigationProvider, TransferMoneyProvider,
            RequestProvider>(
        builder: (context1, bottomCtrl, transCtrl, reqCtrl, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(text: appFonts.message).padding(bottom: Sizes.s8),
        TextField(
            textAlign: TextAlign.start,
            maxLines: 3,
            decoration: InputDecoration(
                filled: true,
                fillColor: appColor(context).appTheme.gray.withOpacity(0.1),
                hintText: language(context, appFonts.writeHere),
                hintStyle: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.lightText),
                focusedBorder: OutlineInputBorder(
                    borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                    borderSide: BorderSide(
                        width: 2, color: appColor(context).appTheme.trans)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                    borderSide: BorderSide(
                        width: Sizes.s2,
                        color: appColor(context).appTheme.trans)),
                border: OutlineInputBorder(
                    borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s6),
                    borderSide: BorderSide(
                        color: appColor(context).appTheme.trans,
                        width: Sizes.s2)))),
        TextWidgetCommon(text: appFonts.amount)
            .padding(bottom: Sizes.s8, top: Sizes.s10),
        TextFiledCommon(
            keyboardType: TextInputType.number,
            hintText: appFonts.addAmount,
            controller: transCtrl.requestAmountCtrl),
        TransferMoneyWidgets()
            .amountLayout(transCtrl.updateTextField)
            .padding(bottom: Sizes.s50),
        CommonAuthButton(text: appFonts.sendRequest).inkWell(onTap: () {
          if (reqCtrl.requestMoney) {
            transCtrl.sendRequestDialog(context);
          }
        })
      ]);
    });
  }
}
