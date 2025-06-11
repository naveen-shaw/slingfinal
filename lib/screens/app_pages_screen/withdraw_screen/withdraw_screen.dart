import '../../../config.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<HomeScreenProvider,WithDrawProvider>(builder: (context1,homeCtrl,withdrawCtrl, child) {
      return DirectionalityRtl(
        child: Scaffold(resizeToAvoidBottomInset: false,
          appBar: CommonAppBar(
              title: appFonts.withdraw, onTap: () => route.pop(context)),
          body: ListView(   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            shrinkWrap: true,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //money withdraw from text layout
                  WithDrawScreenWidgets().moneyWithdrawFrom(),
                  //select bank image layout
                  const SelectBankLayout(),
                  // withdraw screen Money withdraw to text, select card dropdown, amount and add amount textFiled layout
                  WithDrawScreenWidgets().textFiledLayout(context,homeCtrl,withdrawCtrl),
                ],
              ).padding(vertical: Sizes.s20),
            ],
          ),
        ),
      );
    },
    );
  }
}
