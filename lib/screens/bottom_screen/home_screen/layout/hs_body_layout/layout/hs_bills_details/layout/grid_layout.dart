import '../../../../../../../../config.dart';

//Home screen bill details grid view icon, title,subtitle & price layout

class GridLayout extends StatelessWidget {
  final dynamic data;

  const GridLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          SizedBox(
                  height: Sizes.s38,
                  width: Sizes.s38,
                  child: SvgPicture.asset("${data["icon"]}",
                      fit: BoxFit.scaleDown))
              .decorated(
                  color: appTheme.gray.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(Sizes.s10))
              .paddingSymmetric(vertical: Sizes.s18, horizontal: Sizes.s15),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidgetCommon(
                    text: data["title"], style: AppCss.latoMedium14),
                TextWidgetCommon(
                    text: data['subTitle'],
                    style: AppCss.latoLight12
                        .textColor(appColor(context).appTheme.lightText))
              ])
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidgetCommon(text: "${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["price"])).toStringAsFixed(2)}", style: AppCss.latoSemiBold14),
        TextWidgetCommon(
                text: appFonts.pay,
                style: AppCss.latoMedium12.textColor(appTheme.primary)).padding(vertical: Sizes.s6,horizontal: Sizes.s16)
            .center().decorated(
            color: appTheme.primary.withOpacity(0.2),
            borderRadius: SmoothBorderRadius(cornerRadius: AppRadius.r20))
      ]).paddingSymmetric(horizontal: Sizes.s15)
    ]).billDetailsExtension(context);
  }
}
