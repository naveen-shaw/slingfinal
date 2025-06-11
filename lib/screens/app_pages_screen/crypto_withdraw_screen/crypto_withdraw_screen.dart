import 'package:mpay/config.dart';

class CryptoWithdrawScreen extends StatelessWidget {
  const CryptoWithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<HomeScreenProvider, CryptoSendListProvider>(
        builder: (context1, homeCtrl, cryptoSendListCtrl, child) {
      return DirectionalityRtl(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CommonAppBar(
                title: appFonts.withdraw,
                onTap: () => route.pop(context),
                isImageIconSvg: true,
                isImageIcon: eSvgAssets.rotate),
            body: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              shrinkWrap: true,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  //crypto screen withdraw screen details layout
                  CryptoWithdrawWidgets()
                      .withdrawDetails(context, homeCtrl, cryptoSendListCtrl),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '${language(context, appFonts.transactionFee)}: ',
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.lightText)),
                    TextSpan(
                        text: language(context,
                            '${language(context, appFonts.transactionFeeBTC)} (${getSymbol(context)}${(currency(context).currencyVal * 12)})'),
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.primary))
                  ])),
                  VSpace(Sizes.s170),
                  CommonAuthButton(text: appFonts.withdrawToBank, onTap: () =>
                      CryptoWithdrawWidgets().withdrawDialogLayout(context))

                      .padding(bottom: Sizes.s20)
                ]).padding(horizontal: Sizes.s20, vertical: Sizes.s20),
              ],
            )),
      );
    });
  }
}
