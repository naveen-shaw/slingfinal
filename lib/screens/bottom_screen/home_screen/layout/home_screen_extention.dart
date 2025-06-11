import '../../../../config.dart';

extension HomeScreenExtention on Widget {
  //option extension
  Widget optionExtension(BuildContext context,
          {double? width, double? height}) =>
      Container(child: this)
          .width(width ?? Sizes.s60)
          .height(height ?? Sizes.s60)
          .decorated(
              border: Border.all(
                  color: appColor(context).appTheme.gray.withOpacity(0.1),
                  width: .1),
              color: appColor(context).appTheme.screenBg,
              boxShadow: [
                BoxShadow(
                    color: appTheme.darkText.withOpacity(0.2),
                    blurRadius: 0.5,
                    offset: const Offset(0.0, 0.2))
              ],
              borderRadius: BorderRadius.circular(Sizes.s10));

  Widget selectExtension(BuildContext context, {Color? color}) =>
      Container(child: this).width(Sizes.s56).height(Sizes.s56).decorated(
          border: Border.all(
              color: appColor(context).appTheme.gray.withOpacity(0.10),
              width: .2),
          color: color ?? appColor(context).appTheme.gray.withOpacity(0.10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 1.0,
                offset: const Offset(0.0, 0.2))
          ],
          borderRadius: BorderRadius.circular(Sizes.s10));

  Widget notificationImageExtension() =>
      Container(child: this).width(Sizes.s40).height(Sizes.s40).decorated(
          border: Border.all(color: appTheme.gray.withOpacity(0.1), width: .1),
          color: appTheme.gray.withOpacity(0.01),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 1.0,
                offset: const Offset(0.0, 0.2))
          ],
          borderRadius: BorderRadius.circular(Sizes.s10));

  Widget quickExtension(BuildContext context, {GestureTapCallback? onTap}) =>
      Container(child: this)
          .width(Sizes.s60)
          .height(Sizes.s60)
          .decorated(
              border: Border.all(
                  color: appColor(context).appTheme.gray.withOpacity(0.1),
                  width: .1),
              color: appColor(context).appTheme.screenBg,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 1.0,
                    offset: const Offset(0.0, 0.8))
              ],
              borderRadius: BorderRadius.circular(Sizes.s10))
          .inkWell(onTap: onTap);

  Widget transactionExtension(
          {GestureTapCallback? onTap, BuildContext? context}) =>
      Container(child: this).decorated(
          color: appColor(context).appTheme.menuButtonColor,
          boxShadow: [
            BoxShadow(
                color: appColor(context).appTheme.gray.withOpacity(0.2),
                blurRadius: 1.0,
                offset: const Offset(0.0, 0.8))
          ],
          borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s10),
          border: Border.all(
              color: appColor(context).appTheme.gray.withOpacity(0.2)));

  Widget billDetailsExtension(BuildContext context) => Container(
        child: this,
      ).decorated(
          border: Border.all(
              color: appColor(context).appTheme.gray.withOpacity(0.2),
              width: 1),
          color: appColor(context).appTheme.screenBg,
          boxShadow: [
            BoxShadow(
                color: appTheme.gray.withOpacity(0.2),
                blurRadius: 1.0,
                offset: const Offset(0.0, 0.9))
          ],
          borderRadius: BorderRadius.circular(Sizes.s10));

  Widget newsUpdateExtension(BuildContext context) {
    return Container(
      child: this,
    ).height(Sizes.s116).decorated(
        boxShadow: [
          BoxShadow(
              color: appColor(context).appTheme.gray.withOpacity(0.2),
              blurRadius: 3.0,
              offset: const Offset(0.0, 0.8))
        ],
        color: appColor(context).appTheme.menuButtonColor,
        borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s10),
        border: Border.all(
            color: appColor(context)
                .appTheme
                .gray
                .withOpacity(0.2))).paddingOnly(bottom: Sizes.s15);
  }

  Widget notificationExtension(
      {BuildContext? context, GestureTapCallback? onTap}) {
    return Container(
      child: this,
    )
        .decorated(
            color: appColor(context).appTheme.screenBg,
            boxShadow: [
              BoxShadow(
                  color: appTheme.gray.withOpacity(0.2),
                  blurRadius: 1.0,
                  offset: const Offset(0.0, 0.8))
            ],
            borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s10),
            border: Border.all(color: appTheme.gray.withOpacity(0.2)))
        .inkWell(onTap: onTap);
  }

  Widget receivedMoneyExtension(BuildContext context) {
    return Container(child: this)
        .height(Sizes.s310)
        .decorated(
            color: appColor(context).appTheme.screenBg,
            boxShadow: [
              BoxShadow(
                  color: appColor(context).appTheme.gray.withOpacity(0.2),
                  blurRadius: 1.0,
                  offset: const Offset(0.0, 0.8))
            ],
            borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s10),
            border: Border.all(
                color: appColor(context).appTheme.gray.withOpacity(0.3),
                width: 1))
        .paddingSymmetric(horizontal: Sizes.s20, vertical: Sizes.s20);
  }

  //last paid list icon, title, date, price,time layout
  Widget lastPaidExtension(BuildContext context) {
    return Container(child: this).decorated(
        color: appColor(context).appTheme.screenBg,
        boxShadow: [
          BoxShadow(
              color: appColor(context).appTheme.gray.withOpacity(0.2),
              blurRadius: 3.0,
              offset: const Offset(0.0, 0.9))
        ],
        borderRadius: BorderRadius.circular(AppRadius.r10),
        border: Border.all(
            color: appColor(context).appTheme.gray.withOpacity(0.12)));
  }

  Widget settingExtention(BuildContext context, {String? text}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidgetCommon(
              text: text,
              style: AppCss.latoSemiBold16
                  .textColor(appColor(context).appTheme.darkText))
          .padding(vertical: Sizes.s15, horizontal: Sizes.s15),
      Divider(height: 1, color: appColor(context).appTheme.dividerColor)
          .padding(horizontal: Sizes.s15),
      Container(child: this)
    ]).decorated(
        color: appColor(context).appTheme.screenBg,
        boxShadow: [
          BoxShadow(
              color: appColor(context).appTheme.gray.withOpacity(0.2),
              blurRadius: 1.0,
              offset: const Offset(0.0, 0.8))
        ],
        borderRadius: BorderRadius.circular(AppRadius.r10),
        border: Border.all(
            color: appColor(context).appTheme.gray.withOpacity(0.12)));
  }

  Widget cryptoExtention(BuildContext context) {
    return Container(child: this).decorated(
        boxShadow: [
          BoxShadow(
              color: appColor(context).appTheme.dividerColor.withOpacity(0.2),
              blurRadius: 6.0,
              offset: const Offset(0.0, 0.9))
        ],
        borderRadius: BorderRadius.circular(Sizes.s10),
        color: appColor(context).appTheme.screenBg,
        border: Border.all(
            color: appColor(context).appTheme.gray.withOpacity(0.2)));
  }

  Widget appbarBoxDecoration(context, {Color? color, double? bWidth}) =>
      SizedBox(child: this).decorated(
          color: appColor(context).appTheme.menuButtonColor,
          border: Border.all(
              color: color ?? appColor(context).appTheme.radioGrayColor,
              width: bWidth ?? 1),
          borderRadius: const BorderRadius.all(Radius.circular(6)));

  Widget revenueFlowMonthExtention(
    BuildContext context,
    int index,
    CryptoMyPortfolioProvider cryptoCtrl,
  ) {
    return Container(child: this).decorated(
        color: cryptoCtrl.selectedIndex == index
            ? appColor(context)
                .appTheme
                .primary
                .withOpacity(0.1) // Apply primary color if selected
            : appColor(context).appTheme.dividerColor,
        borderRadius: BorderRadius.circular(Sizes.s18));
  }

  Widget coinMonthsExtention(
    BuildContext context,
    int index,
      CryptoCoinDetailsProvider coinCtrl,
  ) {
    return Container(child: this).decorated(
        color: coinCtrl.selectedIndex == index
            ? appColor(context)
                .appTheme
                .primary
                .withOpacity(0.1) // Apply primary color if selected
            : appColor(context).appTheme.dividerColor,
        borderRadius: BorderRadius.circular(Sizes.s18));
  }
  Widget payingDialogExtention(context){return  Container(child: this) .decorated(
  boxShadow: [
  BoxShadow(
  color: appColor(context).appTheme.dividerColor,
  blurRadius: 1.8,
  offset: const Offset(0.0, 0.8))
  ],
  color: appColor(context).appTheme.menuButtonColor,
  border: Border.all(
  color: appColor(context).appTheme.dividerColor),
  borderRadius:
  BorderRadius.circular(Sizes.s10));}
}
