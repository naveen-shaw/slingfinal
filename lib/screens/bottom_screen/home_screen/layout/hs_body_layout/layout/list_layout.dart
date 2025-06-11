import '../../../../../../config.dart';

// transfer,bill, request, withdraw list layout
class ListLayout extends StatelessWidget {
  const ListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer4<HomeScreenProvider, RequestProvider, LanguageProvider,ThemeService>(
        builder: (context1, homeCtrl, reqCtrl, languageCtrl, themeCtrl,child) {
      return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: homeCtrl.optionList.asMap().entries.map((entries) {
                var e = entries.value;
                var index = entries.key;
                return Column(children: [
                  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SvgPicture.asset("${e["icon"]}",
                            height: Sizes.s28,
                            width: Sizes.s28,
                            fit: BoxFit.fill)
                      ])
                      .optionExtension(context)
                      .inkWell(
                          onTap: () =>
                              homeCtrl.listOnTap(index, context, reqCtrl))
                      .marginOnly(top: Sizes.s15),
                  TextWidgetCommon(
                          text: e["title"]!,
                          style: AppCss.latoMedium14
                              .textColor(appColor(context).appTheme.darkText))
                      .marginOnly(bottom: Sizes.s15, top: Sizes.s8)
                ]);
              }).toList())
          .backgroundColor(appColor(context).appTheme.lightBGColor);
    });
  }
}
