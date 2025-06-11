import '../../../../../config.dart';

class AddCardDetailsWidgets {
  // add card details upload button layout
  Widget acdButtonLayout(BuildContext context) =>
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        CommonAuthButton(text: appFonts.upload)
            .padding(top: Sizes.s10, bottom: Sizes.s15)
            .inkWell(
                onTap: () => route.pushNamed(context, routeName.setPinScreen)),
        TextWidgetCommon(
            text: appFonts.skip,
            style: AppCss.latoLight16
                .textColor(appColor(context).appTheme.lightText))
      ])
          .inkWell(
              onTap: () => route.pushNamed(context, routeName.setPinScreen))
          .padding(bottom: Sizes.s40,top: Sizes.s130);

  // add card details  card number, card holder name, expiryDate, cvv Layout
  Widget acdTextFiledLayout(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidgetCommon(text: appFonts.cardNumber),
          TextFiledCommon(
                  hintText: appFonts.enterCardNumber,
                  keyboardType: TextInputType.number)
              .padding(top: Sizes.s10, bottom: Sizes.s18),
          TextWidgetCommon(text: appFonts.cardHolderName),
          TextFiledCommon(hintText: appFonts.enterCardHolderName)
              .padding(top: Sizes.s10, bottom: Sizes.s18),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextWidgetCommon(text: appFonts.expiryDate).expanded(),
            TextWidgetCommon(text: appFonts.cvv).expanded()
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextFiledCommon(hintText: appFonts.expiryDate).expanded(),
            HSpace(Sizes.s10),
            TextFiledCommon(hintText: appFonts.cvv).expanded(),
          ]).paddingSymmetric(vertical: Sizes.s10),
        ],
      ).paddingOnly(top: Sizes.s30);
}
