import '../../../../../config.dart';

class ViewTransactionLayout extends StatelessWidget {
  final dynamic data;

  //Transaction icon,title, subtitle,price, time layout
  const ViewTransactionLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        SvgPicture.asset(
          "${data["icon"]}",
          height: Sizes.s26,
          width: Sizes.s26,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
              appColor(context).appTheme.darkText, BlendMode.srcIn),
        )
            .selectExtension(context)
            .paddingSymmetric(vertical: Sizes.s15, horizontal: Sizes.s15),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidgetCommon(overflow: TextOverflow.ellipsis,
                text: data['title'],
                style: AppCss.latoMedium15,
              ).width(Sizes.s130).padding(bottom: Sizes.s6),
              TextWidgetCommon(
                text: data['date'],
                style: AppCss.latoMedium14
                    .textColor(appColor(context).appTheme.lightText),
              )
            ])
      ]),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetCommon(overflow: TextOverflow.ellipsis,
              text: "${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["amount"]) ).toStringAsFixed(2)}",
              style: AppCss.latoBold16.textColor(data['title']
                          .toString()
                          .contains(appFonts.buyGrocery) ||
                      data['title'].toString().contains(appFonts.buyFruit) ||
                      data['title'].toString().contains(appFonts.commission)
                  ? appColor(context).appTheme.red
                  : appColor(context).appTheme.green),
            ).padding(bottom: Sizes.s6),
            TextWidgetCommon(overflow: TextOverflow.ellipsis,
              text: data["time"],
              style: AppCss.latoMedium13.textColor(appTheme.lightText),
            )
          ]).paddingSymmetric(horizontal: Sizes.s15)
    ]).transactionExtension(context: context);
  }
}
