import '../../../../../../../../config.dart';

class FlipCardLayout extends StatelessWidget {
  const FlipCardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var languageCtrl = Provider.of<LanguageProvider>(context);
    return Transform.flip(
        flipX: languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
            ? true
            : false,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //HomeScreen first card totalBalance layout
                    FirstCardWidgets().totalBalance(context, languageCtrl),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //HomeScreen first card income layout
                          FirstCardWidgets().incomeAndExpense(
                              context,
                              eSvgAssets.arrowUpRight,
                              appFonts.income,
                              appFonts.incomeAmount),
                          // Home screen first card dottedLine layout
                          FirstCardWidgets()
                              .dottedLineLayout(context)
                              .padding(horizontal: Sizes.s16),
                          // HomeScreen first card expense layout
                          FirstCardWidgets().incomeAndExpense(
                              context,
                              eSvgAssets.arrowUpLeft,
                              appFonts.expense,
                              appFonts.expenseAmount)
                        ])
                  ])
            ]).padding(vertical: Sizes.s25, horizontal: Sizes.s20));
  }
}
