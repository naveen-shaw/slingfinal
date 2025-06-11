import '../../../../../../../config.dart';

//Transaction icon,title, subtitle,price, time layout
class TransactionLayout extends StatelessWidget {
  final dynamic data;

  const TransactionLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        SvgPicture.asset("${data["icon"]}",
                height: Sizes.s26,
                width: Sizes.s26,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                    appColor(context).appTheme.darkText, BlendMode.srcIn))
            .selectExtension(context)
            .paddingSymmetric(vertical: Sizes.s15, horizontal: Sizes.s15),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidgetCommon(text: data['title']).padding(bottom: Sizes.s6),
              TextWidgetCommon(
                  text: data['subTitle'],
                  style: AppCss.latoMedium14
                      .textColor(appColor(context).appTheme.lightText))
            ])
      ]),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextWidgetCommon(
                    text:
                        "${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["price"])).toStringAsFixed(2)}",
                    style: AppCss.latoBold16.textColor(data['title']
                                .toString()
                                .contains(appFonts.amazonPrime) ||
                            data['title']
                                .toString()
                                .contains(appFonts.groceryShop)
                        ? appColor(context).appTheme.red
                        : appColor(context).appTheme.green))
                .padding(bottom: Sizes.s6),
            TextWidgetCommon(
                text: data["time"],
                style: AppCss.latoMedium14.textColor(appTheme.lightText))
          ]).paddingSymmetric(horizontal: Sizes.s15)
    ]).transactionExtension(context: context);
  }
}
