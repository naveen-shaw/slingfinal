import '../../../../../../../config.dart';

//transaction list layout
class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeService,HomeScreenProvider>(
      builder: (context1, themeCtrl,homeCtrl, child) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CommonTitleText(
            title: appFonts.transaction,
            onTap: () =>
                route.pushNamed(context, routeName.transactionHistoryScreen),
          ).padding(top: Sizes.s25, bottom: Sizes.s18),
          //transaction list layout
          SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                  children: homeCtrl.transaction.asMap().entries
                      .map((e) =>
                          //Transaction icon,title, subtitle,price, time layout
                          TransactionLayout(data: e.value).marginOnly(top: e.key!=0?Sizes.s15:Sizes.s0))
                      .toList()))
          ,
        ]).paddingSymmetric(horizontal: Sizes.s20);
      },
    );
  }
}
