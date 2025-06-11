

import '../../../config.dart';

class TransferMoneyScreen extends StatelessWidget {
  const TransferMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define your list of dynamic dropdown items
    return Consumer3<TransferMoneyProvider, ThemeService, LanguageProvider>(
        builder: (context1, transCtrl, themeCtrl, languageCtrl, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(DurationClass.ms150)
            .then((value) => transCtrl.init()),
        child: DefaultTabController(
            length: 2,
            child: DirectionalityRtl(
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: appColor(context).appTheme.screenBg,
                  appBar: AppBar(toolbarHeight: Sizes.s58,
                      backgroundColor: appColor(context).appTheme.screenBg,
                      centerTitle: true,
                      leadingWidth: Sizes.s80,
                      leading: CommonMenuButton(
                          isIcon: false,
                          iconImage: eSvgAssets.arrowLeft,
                          colorFilter: ColorFilter.mode(
                              appColor(context).appTheme.darkText, BlendMode.srcIn))
                          .inkWell(onTap: () => route.pop(context))
                          .padding(all: Insets.i8, horizontal: Sizes.s22),
                      title: TextWidgetCommon(
                          text: appFonts.transfer,
                          style: AppCss.latoSemiBold22
                              .textColor(appColor(context).appTheme.darkText)),
                      bottom: TabBar(
                          controller: transCtrl.tabController,
                          indicatorSize: TabBarIndicatorSize.tab,dividerColor: appColor(context).appTheme.dividerColor,
                          indicatorColor: appColor(context).appTheme.primary,
                          labelColor: appColor(context).appTheme.primary,
                          unselectedLabelColor:
                              appColor(context).appTheme.lightText,
                          onTap: (index) =>
                              transCtrl.tabController?.index = index,
                          padding: EdgeInsets.only(top: Sizes.s5),
                          tabs: [
                            TextWidgetCommon(
                                    text: appFonts.bank,
                                    style: AppCss.latoSemiBold18.textColor(
                                        appColor(context).appTheme.darkText))
                                .height(Sizes.s30)
                                .padding(top: Sizes.s15),
                            TextWidgetCommon(
                              text: appFonts.contact,
                              style: AppCss.latoSemiBold18.textColor(
                                  appColor(context).appTheme.darkText),
                            ).height(Sizes.s30).padding(top: Sizes.s15)
                          ])),
                  body: const TabBarView(children: [
                    //bank tab layout
                    BankLayout(),
                    //contact tab layout
                    ContactLayout()
                  ])),
            )),
      );
    });
  }
}
