import '../../../../../config.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GestureTapCallback? onTap, bellTap;

  const HomeAppBar({super.key, this.onTap, this.bellTap});

  @override
  Widget build(BuildContext context) {
    return Consumer4<ThemeService,InsightProvider, BottomNavigationProvider,
            LanguageProvider>(
        builder: (context1, themeCtrl,insightCtrl, bottomCtrl, languageCtrl, child) {
      return DirectionalityRtl(
          child: AppBar(toolbarHeight: Sizes.s57,
              elevation: 2,
              backgroundColor: bottomCtrl.currentTab == 1
                  ? appColor(context).appTheme.lightBGColor
                  : appColor(context).appTheme.screenBg,
              centerTitle: true,
              titleSpacing: 0,
              leadingWidth: Sizes.s80,
              leading: (bottomCtrl.currentTab == 0 )
                  ? CommonMenuButton(
                      isIcon: false,
                      iconImage: eSvgAssets.menu,
                      colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.darkText, BlendMode.srcIn),
                    )
                      .inkWell(onTap: onTap)
                      .padding(all: Insets.i9, horizontal: Insets.i22)
                  : Container(),
              title: (bottomCtrl.currentTab == 0)
                  ? SvgPicture.asset(eSvgAssets.logo,
                      height: Sizes.s25, width: Sizes.s70)
                  : bottomCtrl.currentTab == 1
                      ? TextWidgetCommon(
                          text: appFonts.cryptoWallet,
                          style: AppCss.latoSemiBold22
                              .textColor(appColor(context).appTheme.darkText))
                      : bottomCtrl.currentTab == 2
                          ? TextWidgetCommon(
                              text: appFonts.insight,
                              style: AppCss.latoSemiBold22.textColor(
                                  appColor(context).appTheme.darkText))
                          : TextWidgetCommon(
                              text: appFonts.profile,
                              style: AppCss.latoSemiBold22.textColor(
                                  appColor(context).appTheme.darkText)),
              actions: [
            if (bottomCtrl.currentTab == 0 || bottomCtrl.currentTab == 1)
              const CommonMenuButton(isIcon: false)
                  .inkWell(onTap: bellTap)
                  .paddingSymmetric(horizontal: Sizes.s20),
            if (bottomCtrl.currentTab == 2)
              CommonMenuButton(
                      isIcon: false,
                      iconImage: eSvgAssets.calendar,
                      colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.darkText, BlendMode.srcIn))
                  .inkWell(
                      onTap: () => //insight screen customDialog layout
                          insightCtrl.customMonthDialog(context))
                  .paddingSymmetric(horizontal: Sizes.s20)
          ]));
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
