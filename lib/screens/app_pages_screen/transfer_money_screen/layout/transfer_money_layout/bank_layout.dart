import '../../../../../config.dart';

class BankLayout extends StatelessWidget {
  const BankLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<TransferMoneyProvider, ThemeService>(
      builder: (context1, transCtrl, themeCtrl, child) {
        return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => transCtrl.init()),
          child: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            shrinkWrap: true,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  TextWidgetCommon(
                          text: appFonts.selectBank, style: AppCss.latoSemiBold18)
                      .padding(horizontal: Sizes.s15),
                  //select bank image layout
                  const SelectBankLayout(),
                  //common transfer money BankName, card Number, amount layout
                   CommonTransferMoneyLayout(transCtrl.bankName,(value) => transCtrl.selectBankOnChange(value))
                ]).padding(vertical: Sizes.s20),
                // transfer($19.99) text layout
                TransferMoneyWidgets()
                    .transferButton(context,
                        onTap: () => route.pushNamed(
                            context, routeName.recentContactTransfer))
                    .padding(horizontal: Sizes.s20,top: Sizes.s50,bottom: Sizes.s20)
              ]),
            ],
          ),
        );
      },
    );
  }
}
