import '../../../../config.dart';

class PayingMoneyWidgets {
  //payList screen profile name and image layout
  Widget moneyProfileLayout(BuildContext context) => Expanded(
        flex: 2,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(children: [
            Container(
                    height: Sizes.s86,
                    width: Sizes.s86,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: appColor(context).appTheme.primary),
                        image: DecorationImage(
                            image: AssetImage(eImageAssets.fourthQuick))))
                .center()
                .paddingOnly(top: 7.5),
            SvgPicture.asset(eSvgAssets.ellipse,
                    height: Sizes.s102, width: Sizes.s102, fit: BoxFit.fill)
                .center()
          ]).paddingOnly(bottom: Sizes.s10),
          TextWidgetCommon(
                  text: appFonts.payingMoneyToKristin,
                  textAlign: TextAlign.center)
              .paddingOnly(top: Sizes.s10, bottom: Sizes.s5),
          TextWidgetCommon(
              text: appFonts.upiID,
              textAlign: TextAlign.center,
              style: AppCss.latoMedium14
                  .textColor(appColor(context).appTheme.lightText)),
          const MoneyTextFiled()
        ]),
      );

  //payList screen pay Now Button Layout
  Widget payNowButtonLayout(BuildContext context) =>
      Consumer<PayListProvider>(builder: (context, payListCtrl, child) {
        return StatefulWrapper(
          onInit: () => Future.delayed(DurationClass.ms150)
              .then((value) => payListCtrl.init()),
          child: CommonAuthButton(
                  text:
                      '${payListCtrl.price.text == '' ? "" : "${getSymbol(context)}${language(context, payListCtrl.price.text)}"} ${language(context, appFonts.payNow)}')
              .paddingOnly(bottom: Sizes.s20)
              .inkWell(onTap: () {
            PayListDialogLayout().payListDialog(context);
          }),
        );
      });
// dialog card row card image,title and card Number layout
  Widget dialogCardsRow(context,e){
    return  Row(children: [
      Stack(children: [
        Container(
            height: Sizes.s47,
            width: Sizes.s47,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.s7),
            color: appColor(context)
                .appTheme
                .primary
                .withOpacity(0.2),
            child: Image.asset(
                e.value['icon'],
                fit: BoxFit.scaleDown))
      ]),
      HSpace(Sizes.s10),
      Column(
          mainAxisAlignment:
          MainAxisAlignment.start,
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            TextWidgetCommon(
                text: e.value['title']),
            VSpace(Sizes.s6),
            TextWidgetCommon(
                text:
                "${e.value['cardNumber']} | ${e.value['exDate']}",
                style: AppCss.latoLight12
                    .textColor(
                    appColor(context)
                        .appTheme
                        .lightText)
                    .textDecoration(
                    TextDecoration
                        .none)),
          ]),
    ]);
  }
//dialog radio buttons layout
  Widget dialogRadioLayout(e, BuildContext context){
    return     Consumer<PayListProvider>(
      builder: (context, payListCtrl, child) {
        return Radio(
            value: e.value,
            activeColor: appColor(context)
                .appTheme
                .primary,
            fillColor:
            MaterialStatePropertyAll(
                appColor(context)
                    .appTheme
                    .primary),
            groupValue: payListCtrl
                .selectedCurrencyOption,
            onChanged: (value) {
              payListCtrl
                  .radioValueChange(value,context);
            });
      }
    );
  }
}
