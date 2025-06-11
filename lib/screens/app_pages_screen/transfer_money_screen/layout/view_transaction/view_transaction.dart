import '../../../../../config.dart';

class ViewTransactionScreen extends StatelessWidget {
  const ViewTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TransferMoneyProvider>(builder: (context1, transCtrl, child) {
      return DirectionalityRtl(
        child: Scaffold(
            backgroundColor: appColor(context).appTheme.screenBg,
            appBar: CommonAppBar(
                onTap: () => route.pop(context),
                title: appFonts.higainTransactions,
                isSetting: true,
                settingTap: () =>
                    NavigationBarWidgets().showPopupMenu(context, items: [
                      menuItems(appFonts.requestMoney,context),
                      menuDivider(context),
                      menuItems(appFonts.payMoney,context),
                      menuDivider(context),
                      menuItems(appFonts.removeAll,context)
                    ])),
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                        children: transCtrl.viewTransaction
                            .map((e) =>
                                //Transaction icon,title, subtitle,price, time layout
                                ViewTransactionLayout(data: e)
                                    .marginOnly(top: Sizes.s15))
                            .toList())
                    .padding(horizontal: Sizes.s20, vertical: Sizes.s20))),
      );
    });
  }
}
