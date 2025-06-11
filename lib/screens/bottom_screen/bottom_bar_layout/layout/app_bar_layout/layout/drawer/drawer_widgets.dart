import '../../../../../../../config.dart';

class DrawerWidgets {
  //drawer items list layout
  Widget drawerItemsLists(BuildContext context, MapEntry<int, dynamic> e,
          BottomNavigationProvider bottomCtrl) =>
      ListTile(
        minVerticalPadding: 0,
        dense: true,
        horizontalTitleGap: Sizes.s15,
        leading: SvgPicture.asset(
          e.value["icon"],
          colorFilter: ColorFilter.mode(
              appColor(context).appTheme.darkText, BlendMode.srcIn),
        ),
        title: TextWidgetCommon(
            text: e.value["title"],
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText)),
        onTap: () => //drawer index on taps screen
            bottomCtrl.drawerOnTap(e.key, context),
      ).padding(horizontal: Sizes.s15,vertical: Sizes.s3);

  //drawer divider, dark theme text, theme switch button layout
  Widget darkThemeLayout(context, ThemeService themeCtrl) => Column(children: [
        DottedLine(dashColor: appColor(context).appTheme.lightText),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextWidgetCommon(text: appFonts.darkTheme)
              .paddingSymmetric(vertical: Sizes.s25),
          //common switch layout
          SwitchCommon(
              onToggle: (value) => themeCtrl.switchTheme(),
              value: themeCtrl.isDarkMode)
        ])
      ]).paddingSymmetric(horizontal: Sizes.s18);

  //drawer header layout
  Widget drawerHeaderLayout(context) {
    var languageCtrl = Provider.of<LanguageProvider>(context,listen: false);
  return SizedBox(height: Sizes.s210,
    child: DrawerHeader(margin: EdgeInsets.only(bottom: Sizes.s20),
        decoration: BoxDecoration(
            border: Border(
                bottom: Divider.createBorderSide(context,
                    color: appColor(context).appTheme.dividerColor, width: 1)),
            color: appColor(context).appTheme.drawerHeaderColor),
        child: Column(children: [
          SvgPicture.asset(eSvgAssets.logo,
              fit: BoxFit.scaleDown, height: Sizes.s30)
              .padding(bottom: Sizes.s20),
          Stack(children: <Widget>[
            Transform.flip(flipX:
            languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                ? true
                : false,
              child: Image.asset(eImageAssets.drawer,
                  fit: BoxFit.fill, width: MediaQuery.of(context).size.width),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidgetCommon(
                  text: appFonts.balance,
                  style: TextStyle(
                      color: appColor(context).appTheme.white.withOpacity(0.7))),
              TextWidgetCommon(
                  text:
                  "${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.totalBalanceAmount)).toStringAsFixed(2)}",
                  style: AppCss.latoBold18
                      .textColor(appColor(context).appTheme.white))
            ]).paddingSymmetric(horizontal: Sizes.s12, vertical: Sizes.s12)
          ])
        ])),
  );
  }
}
