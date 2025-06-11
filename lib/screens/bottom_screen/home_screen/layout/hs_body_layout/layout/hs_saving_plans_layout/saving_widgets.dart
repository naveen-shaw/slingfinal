import '../../../../../../../config.dart';

class SavingPlanWidgets {
  //saving plan price and icon layout
  Widget priceAndIconLayout(data, context,bool isArrow) => Row(
        children: [
          Expanded(
              flex: 3,
              child: TextWidgetCommon(
                  text:
                      "${getSymbol(context)}${(currency(context).currencyVal * double.parse(data["price"])).toStringAsFixed(2)}",
                  style: AppCss.latoMedium14
                      .textColor(appColor(context).appTheme.primary))),

          Expanded(
            flex: 1,
            child:  isArrow?Icon(Icons.arrow_right_alt_outlined,
                color: appColor(context).appTheme.darkText): Container(),
          )
        ],
      );

//saving plan custom status bar layout
  Widget statusBarLayout(data, context) => Stack(
        children: [
          Container(
            width: Sizes.s120,
            height: Sizes.s3,
            decoration: BoxDecoration(
                borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s4),
                color: appColor(context).appTheme.gray.withOpacity(0.3)),
          ),
          Container(
            width: Sizes.s90,
            height: Sizes.s3,
            decoration: BoxDecoration(
              gradient: gradientColor(context),
              borderRadius: SmoothBorderRadius(cornerRadius: Sizes.s4),
            ),
          ),
        ],
      );

  //saving plan icon,title,subtitle layout
  Widget savingPlanLayout(Map<String, dynamic> data, BuildContext context,bool isArrow) =>
      Stack(children: [
        Image.asset(
          eImageAssets.savedCard,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                    width: Sizes.s40,
                    height: Sizes.s40,
                    child: SvgPicture.asset("${data['icon']}",
                        height: Sizes.s24,
                        width: Sizes.s24,
                        fit: BoxFit.scaleDown))
                .decorated(
                    color: appColor(context).appTheme.screenBg,
                    borderRadius: BorderRadius.circular(Sizes.s10))
                .paddingOnly(bottom: Sizes.s15),
            TextWidgetCommon(text: data['title'],style: AppCss.latoMedium15.textColor(appColor(context).appTheme.darkText)),
            TextWidgetCommon(
                    text: data['subTitle'],
                    style: AppCss.latoLight12
                        .textColor(appColor(context).appTheme.lightText))
                .paddingOnly(top: Sizes.s8, bottom: Sizes.s6),
            //saving plan custom status bar layout
            SavingPlanWidgets().statusBarLayout(data, context),
            VSpace(Sizes.s8),
            //saving plan price and icon layout
            SavingPlanWidgets().priceAndIconLayout(data, context,isArrow)
          ],
        ).padding(horizontal: Sizes.s15, top: Sizes.s12, bottom: Sizes.s15)
      ]);
}
