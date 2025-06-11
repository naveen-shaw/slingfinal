
import '../../../../config.dart';

class RequestMoneyLayout extends StatelessWidget {
  const RequestMoneyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<HomeScreenProvider,RequestProvider, ThemeService>(
      builder: (context1, homeCtrl,reqCtrl, themeCtrl, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetCommon(text: appFonts.requestMoneyTo),
            reqCtrl.requestMoney
                // higainWilliams name list Layout
                ? RequestMoneyWidgets().higainWilliamsLayout(context, reqCtrl)
                // request money to list layout
                : RequestMoneyWidgets().reqListLayout(homeCtrl,reqCtrl, context, themeCtrl)
          ],
        );
      },
    );
  }
}
