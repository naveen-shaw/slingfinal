import '../../../../../../config.dart';

class DialogSuccessfully {
  //Common SuccessFully and error dialog Layout
  successfullyDialog(context) {
    var bottomCtrl = Provider.of<BottomNavigationProvider>(context,listen: false);
    return commonDialog(context, false,
        text: appFonts.errorInTransfer,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(eImageAssets.errorInTransfer),
          TextWidgetCommon(
                  textAlign: TextAlign.center,
                  text: appFonts.thereWasAProblemWhen)
              .padding(vertical: Sizes.s20),
          CommonAuthButton(text: appFonts.tryAgain).inkWell(onTap: () {
            route.pop(context);
            commonDialog(context, false,
                text: appFonts.successfullyTransferred,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(eImageAssets.successFullyTransfer)
                      .padding(bottom: Sizes.s15),
                  TextWidgetCommon(
                    text:
                        '${getSymbol(context)}${(currency(context).currencyVal * double.parse(appFonts.numbers)).toStringAsFixed(2)}',
                    style: AppCss.latoBold30
                        .textColor(appColor(context).appTheme.primary),
                  ),
                  TextWidgetCommon(
                          text: appFonts.srNumber,
                          style: AppCss.latoLight14
                              .textColor(appColor(context).appTheme.lightText))
                      .padding(top: Sizes.s5),
                  DottedLine(
                          dashColor:
                              appColor(context).appTheme.gray.withOpacity(0.2))
                      .padding(vertical: Sizes.s15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidgetCommon(text: appFonts.payFrom),
                              TextWidgetCommon(text: appFonts.payTo)
                                  .padding(vertical: Sizes.s15),
                              TextWidgetCommon(text: appFonts.date)
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextWidgetCommon(
                                  text: appFonts.recentNumber,
                                  color: appColor(context).appTheme.lightText),
                              TextWidgetCommon(
                                      text: appFonts.payToNumber,
                                      color:
                                          appColor(context).appTheme.lightText)
                                  .padding(vertical: Sizes.s15),
                              TextWidgetCommon(
                                  text: appFonts.payDate,
                                  color: appColor(context).appTheme.lightText)
                            ])
                      ]).padding(bottom: Sizes.s30),
                  CommonAuthButton(text: appFonts.backToHome).inkWell(
                      onTap: () {
                    route.pop(context);
                    bottomCtrl.onTap(context);
                  })
                ]);
          })
        ]);
  }
}
