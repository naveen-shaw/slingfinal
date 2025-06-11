import '../../../../../../../config.dart';

class FirstCardLayout extends StatelessWidget {
  const FirstCardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<ThemeService, HomeScreenProvider, LanguageProvider>(
        builder: (context1, themeCtrl, homeCtrl, languageCtrl, child) {
      return Stack(alignment: Alignment.bottomRight, children: [
        Stack(
            alignment: languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                ? Alignment.centerLeft
                : Alignment.centerRight,
            children: [
              Transform.flip(
                  flipX:
                      languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                          ? true
                          : false,
                  child: Container(
                      width: .99.sw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s8),
                          image: DecorationImage(
                              image: AssetImage(themeCtrl.isDarkMode
                                  ? eImageAssets.homeCardDark
                                  : eImageAssets.homeCard),
                              fit: BoxFit.fill)),
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.s20, vertical: Sizes.s20),
                      child: const FlipCardLayout())),
              // Home Screen + add money layout
              FirstCardWidgets().addMoney(context, languageCtrl)
            ]).inkWell(
            // home Screen add money Dialog layout
            onTap: () => FirstCardWidgets().addMoneyDialog(context))
      ]);
    });
  }
}
