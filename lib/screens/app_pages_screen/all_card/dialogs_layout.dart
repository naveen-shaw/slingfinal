import 'dart:developer';
import '../../../config.dart';

//remove tap dialog layout
removeDialog(context) {
  return commonDialog(context, true,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(eImageAssets.cardsRemove, fit: BoxFit.fill),
        TextWidgetCommon(
          text: appFonts.areYouSureYou,
          textAlign: TextAlign.center,
        ).padding(bottom: Sizes.s20, top: Sizes.s15),
        CommonAuthButton(text: appFonts.deleteCard,onTap: () {
          route.pop(context);
          commonDialog(context, false,
              text: appFonts.successfullyDelete,
              children: [
                Image.asset(eImageAssets.successFullyTransfer,
                    fit: BoxFit.scaleDown)
                    .padding(horizontal: Sizes.s50),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: language(context, appFonts.yourCardNumber),
                          style: AppCss.latoLight15
                              .textColor(appColor(context).appTheme.darkText)),
                      TextSpan(
                          text:
                          "  ${language(context, appFonts.recentNumber)}  ",
                          style: AppCss.latoLight15
                              .textColor(appColor(context).appTheme.primary)),
                      TextSpan(
                          text: language(
                              context, appFonts.hasSuccessfullyDeleted),
                          style: AppCss.latoLight15
                              .textColor(appColor(context).appTheme.darkText))
                    ])).padding(top: Sizes.s30, bottom: Sizes.s20)
              ]);
        })
      ]);
}

//add and edit dialog layout
editAndAddDialog(context,
    {String? title, dynamic e}) {

  return commonDialog(context, false,
      text: title ?? appFonts.editCard,
      children: [
        Consumer<AllCardsProvider>(
          builder: (context, billCtrl, child)  {
            if (e != null) {
              billCtrl.addCardNumber.text = e['accountNumber'];
              billCtrl.expDate.text = e['expDate'];
              billCtrl.cvv.text = language(context, appFonts.cardPin);
            } else {
              billCtrl.addCardNumber.clear();
              billCtrl.expDate.clear();
              billCtrl.cvv.clear();
            }
            return Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidgetCommon(text: appFonts.cardType).padding(bottom: Sizes.s8),
                CommonDropDownMenu(value: billCtrl.chosenItem,onChanged:(value) => billCtrl.dropDownOnChange(value) ,
                    hintText: appFonts.selectCardType,
                    itemsList: billCtrl.cardsDropDownItems.map((item) {
                      log("items = ${item['value']}");
                      return DropdownMenuItem(
                          value: item['value'],
                          child: TextWidgetCommon(text: item['label']));
                    }).toList()),
                TextWidgetCommon(text: appFonts.cardNumber)
                    .padding(bottom: Sizes.s8, top: Sizes.s20),
                TextFiledCommon(
                  controller: billCtrl.addCardNumber,
                  hintText: appFonts.addCardNumber,
                  keyboardType: TextInputType.number,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetCommon(text: appFonts.expiryDate)
                                .padding(bottom: Sizes.s8),
                            TextFiledCommon(
                                controller: billCtrl.expDate,
                                hintText: appFonts.enterDate,
                                style: AppCss.latoMedium13
                                    .textColor(appColor(context).appTheme.lightText))
                          ])),
                  HSpace(Sizes.s15),
                  Expanded(
                      flex: 1,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetCommon(text: appFonts.cvv)
                                .padding(bottom: Sizes.s8),
                            TextFiledCommon(
                                controller: billCtrl.cvv,
                                keyboardType: TextInputType.number,
                                hintText: appFonts.enterCvv,
                                style: AppCss.latoMedium13
                                    .textColor(appColor(context).appTheme.lightText))
                          ]))
                ]).padding(top: Sizes.s20, bottom: Sizes.s30),
                CommonAuthButton(text: appFonts.deposit,onTap: () => route.pop(context))
              ],
            );
          }
        ),

      ]);
}
