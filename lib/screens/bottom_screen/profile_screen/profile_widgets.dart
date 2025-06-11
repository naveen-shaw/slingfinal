import '../../../config.dart';

class ProfileWidgets {
  //profile screens list layout
  Widget profileScreenList(
      BuildContext context,
      ProfileScreenProvider profileCtrl,
      ThemeService themeCtrl,
      LanguageProvider languageCtrl) {
    return Column(
            children: profileCtrl.profileList.asMap().entries.map((entries) {
      var e = entries.value;
      var index = entries.key;
      return Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: Sizes.s40,
            width: Sizes.s40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColor(context).appTheme.gray.withOpacity(.2),
            ),
            child: SvgPicture.asset(
              themeCtrl.isDarkMode ? "${e['DarkIcon']}" : e['icon'],
              fit: BoxFit.scaleDown,
            ),
          ),
          HSpace(Sizes.s12),
          TextWidgetCommon(
            text: e['title'],
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText),
          ).expanded(flex: 2),
          Transform.flip(
            flipX: languageCtrl.isUserRTl || languageCtrl.getLocal() == 'ar'
                ? true
                : false,
            child: SvgPicture.asset(eSvgAssets.arrowRight,
                colorFilter: ColorFilter.mode(
                    appColor(context).appTheme.darkText, BlendMode.srcIn)),
          )
        ]).padding(horizontal: Sizes.s15, vertical: Sizes.s15),
        if (index != 5)
          Divider(height: 0, color: appColor(context).appTheme.dividerColor)
              .padding(horizontal: Sizes.s15)
      ]).inkWell(onTap: () => profileCtrl.indexOnTap(context, index, e));
    }).toList())
        .lastPaidExtension(context)
        .padding(vertical: Sizes.s15);
  }

//profile image, name , number layout
  Widget profileLayout(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Image.asset(eImageAssets.profileBoard,
              height: Sizes.s58, fit: BoxFit.fill),
          Container(
            height: Sizes.s88,
            width: Sizes.s88,
            decoration: BoxDecoration(
                color: appColor(context).appTheme.trans.withOpacity(0.1),
                border: Border.all(
                    color: appColor(context).appTheme.profileBorder,
                    width: Sizes.s2),
                borderRadius: BorderRadius.circular(Sizes.s15)),
            child: Image.asset(
              eImageAssets.fourthQuick,
              height: Sizes.s80,
              width: Sizes.s80,
            ).padding(all: Sizes.s4),
          ).center().padding(top: Sizes.s23)
        ]),
        TextWidgetCommon(
                text: appFonts.survanaWilliams, style: AppCss.latoMedium20)
            .padding(top: Sizes.s15, bottom: Sizes.s4),
        TextWidgetCommon(
            text: appFonts.userPhone,
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.lightText)),
      ],
    );
  }
}
