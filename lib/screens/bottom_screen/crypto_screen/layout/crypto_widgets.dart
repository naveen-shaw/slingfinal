import '../../../../config.dart';

class CryptoWidgets {
  //crypto screen current Balance layout
  Widget cryptoCurrentBalance(context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(eImageAssets.cryptoBalanceCard),
                fit: BoxFit.fill)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TextWidgetCommon(
                        text: appFonts.currentBalance,
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.white))
                    .padding(bottom: Sizes.s5),
                TextWidgetCommon(
                    text: '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.totalBalanceAmount)).toStringAsFixed(2)}',
                    style: AppCss.latoExtraBold22
                        .textColor(appColor(context).appTheme.white))
              ]),
              Image.asset(eImageAssets.cryptoCardContainer)
            ]).padding(horizontal: Sizes.s40, vertical: Sizes.s35));
  }

//crypto screen send,request,withdraw and exchange list layout
  Widget sendRequestListLayout(
      BuildContext context, CryptoProvider cryptoCtrl) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: cryptoCtrl.cryptoList.asMap().entries.map((entries) {
              var e = entries.value;
              var index = entries.key;
              return Column(children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset("${e["icon"]}",
                      height: Sizes.s30, width: Sizes.s30, fit: BoxFit.fill)
                ])
                    .optionExtension(context,
                        width: Sizes.s65, height: Sizes.s65)
                    .inkWell(
                        onTap: () => cryptoCtrl.cryptoListOnTap(context, index))
                    .marginOnly(top: Sizes.s15),
                TextWidgetCommon(
                        text: e["title"],
                        style: AppCss.latoMedium14
                            .textColor(appColor(context).appTheme.darkText))
                    .marginOnly(bottom: Sizes.s15, top: Sizes.s8)
              ]);
            }).toList())
        .backgroundColor(appColor(context).appTheme.gray.withOpacity(0.07));
  }

  //crypto screen cards layout
  Widget cryptoCardsLayout(BuildContext context, CryptoProvider cryptoCtrl,
      LanguageProvider languageCtrl) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: cryptoCtrl.hireAssistance
                    .asMap()
                    .entries
                    .map((e) => Row(children: [
                          Image.asset(e.value,
                              fit: BoxFit.fill, width: Sizes.s300),
                          if (e.key == 0) HSpace(Sizes.s15)
                        ]))
                    .toList()))
        .paddingOnly(top: Sizes.s18);
  }

  //crypto screen news Update layout
  Widget cryptoNewsUpdateLayout(context) {
    var homeCtrl = Provider.of<HomeScreenProvider>(context, listen: false);
    return Column(children: [
      CommonTitleText(
              title: appFonts.newsUpdate,
              onTap: () => route.pushNamed(context, routeName.newsUpdateScreen))
          .padding(bottom: Sizes.s18, top: Sizes.s25),
      SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
              children: homeCtrl.newsUpdate
                  // Crypto screen news update all icon,title,date,name layout
                  .map((e) => NewsUpdateLayout(data: e))
                  .toList()))
    ]);
  }

  //Crypto Screen my Crypto Layout icon,title,percentage, mapIcon layout
  Widget myCryptoIconTitle(e, context) {
    var themeCtrl = Provider.of<ThemeService>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        SvgPicture.asset(themeCtrl.isDarkMode ? e["iconDark"] : e['icon']),
        HSpace(Sizes.s8),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextWidgetCommon(text: e['title']),
          TextWidgetCommon(text: e['per'], style: AppCss.latoMedium12)
        ])
      ]),
      SvgPicture.asset(e['mapIcons'])
    ]);
  }
}
