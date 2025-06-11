import '../../../../config.dart';
//insight Income and Expense layout
class InsightIncomeExpense extends StatelessWidget {
  const InsightIncomeExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //HomeScreen first card income layout
          FirstCardWidgets().incomeAndExpense(
              context,
              colorFilter: ColorFilter.mode(
                  appColor(context).appTheme.green,
                  BlendMode.srcIn),
              textColor: appColor(context).appTheme.lightText,
              boldTextColor:
              appColor(context).appTheme.darkText,
              eSvgAssets.arrowUpRight,
              appFonts.income,
              appFonts.incomeAmount),
          // Home screen first card dottedLine layout
          FirstCardWidgets()
              .dottedLineLayout(context)
              .padding(horizontal: Sizes.s40),
          // HomeScreen first card expense layout
          FirstCardWidgets().incomeAndExpense(
              context,
              colorFilter: ColorFilter.mode(
                  appColor(context).appTheme.red,
                  BlendMode.srcIn),
              textColor: appColor(context).appTheme.lightText,
              boldTextColor:
              appColor(context).appTheme.darkText,
              eSvgAssets.arrowUpLeft,
              appFonts.expense,
              appFonts.expenseAmount)
        ]).padding(vertical: Sizes.s15).backgroundColor(
        appColor(context).appTheme.gray.withOpacity(0.15));
  }
}
