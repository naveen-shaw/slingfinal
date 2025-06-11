import '../../../../../config.dart';

class ContactLayout extends StatelessWidget {
  const ContactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TransferMoneyProvider>(
        builder: (context1, transCtrl, child) {
      return ListView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        shrinkWrap: true,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // recent payees  icons & name layout
                Column(children: [
                  //contact tab recent payees List icons & name layout
                  const RecentPayeesListLayout(),
                  //common transfer money BankName, card Number, amount layout
                  CommonTransferMoneyLayout(transCtrl.contactSelectBank,
                      (value) => transCtrl.contactSelectBankOnChange(value))
                ]),
                TransferMoneyWidgets()
                    .transferButton(context,
                        onTap: () => route.pushNamed(
                            context, routeName.recentContactTransfer))
                    .padding(horizontal: Sizes.s20,top: Sizes.s50,bottom: Sizes.s30)
              ]),
        ],
      );
    });
  }
}
