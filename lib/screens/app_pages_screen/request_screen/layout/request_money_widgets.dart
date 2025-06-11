import '../../../../config.dart';

class RequestMoneyWidgets {
  //request money to list layout
  Widget reqListLayout(
      HomeScreenProvider homeCtrl,
    RequestProvider reqCtrl,
    BuildContext context,
    ThemeService themeCtrl,
  ) {
    return SingleChildScrollView(
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
                ],
              ).quickExtension(context,
                  onTap: () => reqCtrl.requestMoneyOnTapTrue())
            ]).width(Sizes.s70).marginOnly(left: Sizes.s5, top: Sizes.s20),
            TextWidgetCommon(
              text: e["title"],
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.darkText),
            ).marginOnly(top: Sizes.s5)
          ]);
        }).toList()));
  }
// higainWilliams name list Layout
  Widget higainWilliamsLayout(BuildContext context, homeCtrl) {
    return Container(
      color: appColor(context).appTheme.gray.withOpacity(0.07),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(eImageAssets.higgins),
        Expanded(
            flex: 2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgetCommon(
                          text: appFonts.higainWilliams,
                          style: AppCss.latoMedium14
                              .textColor(appColor(context).appTheme.darkText))
                      .padding(bottom: Sizes.s10),
                  TextWidgetCommon(
                      text: appFonts.recentNumber,
                      style: AppCss.latoMedium14
                          .textColor(appColor(context).appTheme.lightText))
                ]).padding(horizontal: Sizes.s12)),
        IconButton(
            icon: Icon(Icons.more_vert, size: Sizes.s28),
            onPressed: () => homeCtrl.requestMoneyOnTapFalse(),
            color: appColor(context).appTheme.darkText)
      ]).padding(vertical: Sizes.s12, horizontal: Sizes.s12),
    ).paddingOnly(top: Sizes.s15);
  }
}
