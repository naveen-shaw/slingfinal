import '../../../../config.dart';

class SettingWidgets {
  // setting notification switch layout
  Widget settingNotificationLayout(context) {
    var settingCtrl = Provider.of<SettingProvider>(context, listen: false);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(
            text: appFonts.paymentNotification,
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText)),
        SwitchCommon(
            onToggle: (value) => settingCtrl.paymentNotificationSwitch(),
            value: settingCtrl.isPaymentNotification)
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(
            text: appFonts.notificationSound,
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText)),
        SwitchCommon(
            onToggle: (value) => settingCtrl.notificationSoundSwitch(),
            value: settingCtrl.isNotificationSound)
      ]).padding(vertical: Sizes.s15),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(
            text: appFonts.billDueDate,
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText)),
        SwitchCommon(
            onToggle: (value) => settingCtrl.billDateSwitch(),
            value: settingCtrl.isBillDate)
      ])
    ])
        .padding(horizontal: Sizes.s17, vertical: Sizes.s15)
        .settingExtention(context, text: appFonts.notification);
  }

  // theme switch layout
  Widget themeLayout(
    context,
    ThemeService themeCtrl,
    LanguageProvider languageCtrl,
  ) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(
            text: appFonts.darkTheme,
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText)),
        SwitchCommon(
            onToggle: (value) => themeCtrl.switchTheme(),
            value: themeCtrl.isDarkMode)
      ]),
      VSpace(Sizes.s15),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(
            text: appFonts.rtl,
            style: AppCss.latoMedium14
                .textColor(appColor(context).appTheme.darkText)),
        SwitchCommon(
            onToggle: (value) => languageCtrl.switchRTL(),
            value: languageCtrl.isUserRTl)
      ])
    ])
        .padding(horizontal: Sizes.s17, vertical: Sizes.s15)
        .settingExtention(context, text: appFonts.theme)
        .padding(vertical: Sizes.s25);
  }

  // language radio Button layout
  Widget languageLayout(context) {
    return Consumer2<SettingProvider, LanguageProvider>(
        builder: (context1, settingCtrl, languageCtrl, child) {
      return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: settingCtrl.languageList
                  .map((e) => Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidgetCommon(text: e['title']),
                              Radio(
                                  value: e['title'],
                                  activeColor:
                                      appColor(context).appTheme.primary,
                                  fillColor: MaterialStatePropertyAll(
                                      settingCtrl.selectedLanguageOption ==
                                              e['title']
                                          ? appColor(context).appTheme.primary
                                          : appColor(context)
                                              .appTheme
                                              .radioGrayColor),
                                  groupValue:
                                      settingCtrl.selectedLanguageOption,
                                  onChanged: (value) =>
                                      settingCtrl.languageChangeValue(
                                          value.toString().toLowerCase(),
                                          context))
                            ]).inkWell(
                            onTap: () => settingCtrl.languageChangeValue(
                                e['title'], context))
                      ]))
                  .toList())
          .padding(all: Sizes.s15)
          .settingExtention(context, text: appFonts.language);
    });
  }

  //currency radio Button layout
  Widget currencyLayout(
    context,
  ) {
    return Consumer<SettingProvider>(builder: (context1, settingCtrl, child) {
      return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: settingCtrl.currencyList
                  .map((e) => Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidgetCommon(text: e['title']),
                              Radio(
                                  value: e['title'],
                                  activeColor:
                                      appColor(context).appTheme.darkText,
                                  // Change the active radio button color here
                                  fillColor: MaterialStateProperty.all(
                                      settingCtrl.selectedCurrencyOption ==
                                              e['title']
                                          ? appColor(context).appTheme.primary
                                          : appColor(context)
                                              .appTheme
                                              .radioGrayColor),
                                  groupValue:
                                      settingCtrl.selectedCurrencyOption,
                                  onChanged: (value) => settingCtrl
                                      .currencyChangeValue(value, context, e))
                            ]).inkWell(
                            onTap: () => settingCtrl.currencyChangeValue(
                                e['title'], context, e))
                      ]))
                  .toList())
          .padding(all: Sizes.s15)
          .settingExtention(context, text: appFonts.currency)
          .padding(vertical: Sizes.s25);
    });
  }
}
