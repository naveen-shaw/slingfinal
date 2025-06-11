import '../../../config.dart';

class NewsUpdateWidgets {
  //news update description screen bg image,home earn more cash... text,earn 50% with... text layout
  Widget newsDesEarnLayout(context, themeCtrl) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(themeCtrl.isDarkMode
                  ? eImageAssets.newsUpdateCardDark
                  : eImageAssets.newsUpdateCard),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          TextWidgetCommon(
            text: appFonts.howToEarnMore,
            style: AppCss.latoLight14
                .textColor(appColor(context).appTheme.primary)
                .textHeight(1.5),
          ),
          VSpace(Sizes.s5),
          TextWidgetCommon(
              text: appFonts.earnWithThis,
              style: AppCss.latoLight12
                  .textColor(appColor(context).appTheme.lightText))
        ],
      ).padding(all: Sizes.s15),
    );
  }

  //news update description screen icon image layout
  Widget newsDesImageLayout(homeCtrl) {
    return Image.asset("${homeCtrl.eData['icon']}",
            fit: BoxFit.fill, height: Sizes.s200, width: double.infinity)
        .padding(bottom: Sizes.s12);
  }

  //news update description screen title ,name,date layout
  Widget newsUpdateNameLayout(context, homeCtrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: "${homeCtrl.eData['title']}",
          style: AppCss.latoMedium20
              .textColor(appColor(context).appTheme.darkText),
        ).padding(bottom: Sizes.s8),
        Row(children: [
          TextWidgetCommon(
              text: homeCtrl.eData['date'],
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.lightText)),
          TextWidgetCommon(
              text: " | ${homeCtrl.eData['name'].toString().substring(1)}",
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.lightText))
        ]),
      ],
    );
  }

  //news update description screen description layout
  Widget newsUpdateDescLayout(context, homeCtrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          height: Sizes.s1,
          color: appColor(context).appTheme.gray.withOpacity(0.2),
        ).padding(vertical: Sizes.s15),
        TextWidgetCommon(
          text: homeCtrl.eData['des'],
          style: AppCss.latoMedium14
              .textColor(appColor(context).appTheme.darkText)
              .textHeight(1.5),
        ).padding(bottom: Sizes.s20),
      ],
    );
  }
}
