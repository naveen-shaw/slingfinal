import 'package:mpay/config.dart';

//quick send money layout
class QuickSendToLayout extends StatelessWidget {
  const QuickSendToLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer3<HomeScreenProvider, ThemeService, LanguageProvider>(
        builder: (context1, homeCtrl, themeCtrl, languageCtrl, child) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // quick send heading text
        TextWidgetCommon(text: appFonts.quickSend, style: AppCss.latoSemiBold18.textColor(appColor(context).appTheme.darkText))
            .padding(horizontal: Sizes.s10,bottom: Sizes.s18),
        // quick send icon and text list layout
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: homeCtrl.quickSend.asMap().entries.map((entry) {
                  final index = entry.key;
                  final e = entry.value;
                  return Column(children: [
                    Stack(children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            index == 0 && themeCtrl.isDarkMode
                                ? Image.asset(eImageAssets.firstQuickDark,
                                fit: BoxFit.fill)
                                : Image.asset("${e["icon"]}", fit: BoxFit.fill)
                          ]).quickExtension(
                          onTap: () =>
                          index == 0 ?   route.pushNamed(
                              context, routeName.payeeListScreen):route.pushNamed(context, routeName.payingMoneyScreen),
                          context)
                    ]).width(Sizes.s70).marginOnly(
                        left: languageCtrl.isUserRTl ||
                            languageCtrl.getLocal() == 'ar'
                            ? Sizes.s0
                            : Sizes.s10,

                        right: languageCtrl.isUserRTl ||
                            languageCtrl.getLocal() == 'ar'
                            ? Sizes.s10
                            : Sizes.s0),
                    TextWidgetCommon(
                        text: e["title"],
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.darkText))
                        .marginOnly(top: Sizes.s5)
                  ]);
                }).toList()))
      ]).paddingSymmetric(horizontal: Sizes.s10);
    });
  }
}
