
import '../../../config.dart';

class AllCardsWidgets {
  //visa and more horiz icon layout
  Widget visaIconLayout(context, e, homeCtrl) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SvgPicture.asset(e['visa'], fit: BoxFit.fill),
      PopupMenuButton(icon: Icon(Icons.more_horiz,color: appColor(context).appTheme.white),
          color: appColor(context).appTheme.screenBg,
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry>[
              menuItems(appFonts.edit,context, onTap: ()=>editAndAddDialog(context, e: e)),
              menuDivider(context),
              menuItems(appFonts.remove,context, onTap: () => removeDialog(context))
            ];
          })
    ]);
  }
// account number,name and chip layout
  Widget acNumberChipLayout(context, e) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(
                text: e['accountNumber'],
                style: AppCss.latoSemiBold18
                    .textColor(appColor(context).appTheme.white))
            .padding(top: Sizes.s20, bottom: Sizes.s2),
        TextWidgetCommon(
            text: e['name'],
            style: AppCss.latoSemiBold14
                .textColor(appColor(context).appTheme.white))
      ]),
      SvgPicture.asset(eSvgAssets.chip, fit: BoxFit.scaleDown)
    ]);
  }

//amount,exp.date,cvv layout
  Widget amountExpCvvLayout(context, e) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      TextWidgetCommon(
              text: "${getSymbol(context)}${(currency(context).currencyVal * double.parse(e['amount']) ).toStringAsFixed(2)}",
              style:
                  AppCss.latoBold24.textColor(appColor(context).appTheme.white))
          .padding(top: Sizes.s20),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(
          text: appFonts.expDate,
          style: AppCss.latoLight12
              .textColor(appColor(context).appTheme.white.withOpacity(0.7)),
        ).padding(bottom: Sizes.s5, top: Sizes.s20),
        TextWidgetCommon(
            text: e['expDate'],
            style: AppCss.latoSemiBold12
                .textColor(appColor(context).appTheme.white))
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextWidgetCommon(
          text: appFonts.cvv,
          style: AppCss.latoLight12
              .textColor(appColor(context).appTheme.white.withOpacity(0.7)),
        ).padding(bottom: Sizes.s5, top: Sizes.s20),
        TextWidgetCommon(
            text: appFonts.cardPin,
            style: AppCss.latoSemiBold12
                .textColor(appColor(context).appTheme.white))
      ])
    ]);
  }


}
