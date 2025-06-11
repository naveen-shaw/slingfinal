import '../config.dart';

class CommonTransactionListLayout extends StatelessWidget {
  final GestureTapCallback? onTap;
  final List newList;
  final dynamic data;

  const CommonTransactionListLayout(
    this.newList,
    this.data, {
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer2<HomeScreenProvider, LanguageProvider>(
        builder: (context1, homeCtrl, languageCtrl, child) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetCommon(
                    text: data["dayTitle"], style: AppCss.latoSemiBold18)
                .padding(bottom: Sizes.s20),
            ...newList
                .map((e) => Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              SvgPicture.asset("${e['icon']}",
                                      colorFilter: ColorFilter.mode(
                                          appColor(context).appTheme.darkText,
                                          BlendMode.srcIn),
                                      fit: BoxFit.scaleDown,
                                      height: Sizes.s26,
                                      width: Sizes.s26)
                                  .selectExtension(context)
                                  .padding(
                                      right: languageCtrl.isUserRTl||languageCtrl.getLocal() == 'ar'
                                          ? Sizes.s0
                                          : Sizes.s12,
                                      left: languageCtrl.isUserRTl||languageCtrl.getLocal() == 'ar'
                                          ? Sizes.s12
                                          : Sizes.s0),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextWidgetCommon(text: e['title'])
                                        .padding(bottom: Sizes.s8),
                                    TextWidgetCommon(
                                        text: e['subTitle'],
                                        style: AppCss.latoMedium14.textColor(
                                            appColor(context)
                                                .appTheme
                                                .lightText))
                                  ])
                            ]).paddingSymmetric(vertical: Sizes.s15),
                            Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
                              TextWidgetCommon(
                                      text: "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['price'])).toStringAsFixed(2)} ",
                                      style: AppCss.latoMedium14.textColor(e[
                                                      'title']
                                                  .toString()
                                                  .contains(appFonts.diane) ||
                                              e['title']
                                                  .toString()
                                                  .contains(appFonts.appleStore)
                                          ? appColor(context).appTheme.green
                                          : appColor(context).appTheme.red))
                                  .padding(bottom: Sizes.s8),
                              TextWidgetCommon(
                                  text: e['time'],
                                  style: AppCss.latoMedium14.textColor(
                                      appColor(context).appTheme.lightText))
                            ])
                          ])
                    ])
                        .inkWell(onTap: onTap)
                        .paddingSymmetric(horizontal: Sizes.s15)
                        .transactionExtension(context: context)
                        .paddingOnly(bottom: Sizes.s15))
                .toList()
          ]);
    });
  }
}
