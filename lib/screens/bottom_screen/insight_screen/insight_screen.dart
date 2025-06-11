import 'package:mpay/config.dart';


class   InsightScreen extends StatelessWidget {
  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<InsightProvider, HomeScreenProvider, LanguageProvider>(
        builder: (context1, insightCtrl, homeCtrl, languageCtrl, child) {
      return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => insightCtrl.init()),
          child: DirectionalityRtl(
              child: Scaffold(
                  backgroundColor: appColor(context).appTheme.screenBg,
                  body: SingleChildScrollView(
                      child: Column(children: [
                    Column(children: [
                      //insight screen total balance layout
                      InsightWidgets().totalBalance(context),
                      //insight column BarChart layout
                      const InsightBarChartLayout()
                    ]).padding(
                        horizontal: Sizes.s20,
                        vertical: Sizes.s20,
                        bottom: Sizes.s20),
                    //insight Income and Expense layout
                    const InsightIncomeExpense(),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // insight category chart layout
                          CategoriesChartLayout(insightCtrl),
                          // insight shopping food health entertainment layout
                          InsightWidgets().shoppingFoodLayout(
                              context, languageCtrl, insightCtrl),
                          // transaction history layout
                          InsightWidgets()
                              .transactionHistoryLayout(context, homeCtrl)
                        ]).padding(
                        horizontal: Sizes.s20,
                        vertical: Sizes.s20,
                        bottom: Sizes.s110)
                  ])))));
    });
  }
}
